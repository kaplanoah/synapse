class User < ActiveRecord::Base

	has_many :searches

	has_secure_password

	before_create :create_remember_token

	before_save :create_remember_token

	validates :firstname, presence: true, length: { maximum: 50 }
	validates :lastname, presence: true, length: { maximum: 50 }
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true, confirmation: true, length: { in: 6..20 }

	def create_remember_token
        self.remember_token = SecureRandom.urlsafe_base64
    end

end
