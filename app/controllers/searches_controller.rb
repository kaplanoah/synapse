class SearchesController < ApplicationController

	before_filter :signed_in_user, only: [:create]

	def create
		parameters = params.require(:search).permit(:x, :y, :z, :range)
		new_search = Search.create(parameters)
		current_user.searches << new_search
		redirect_to user_path(current_user)
	end

end
