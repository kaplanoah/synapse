class NewpapersController < ApplicationController

	def new
		@newpaper = Newpaper.new
	end

end
