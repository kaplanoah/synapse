class NewpapersController < ApplicationController

	def new
		@newpaper = Newpaper.new
	end

	def create
		new_paper = params.require(:newpaper).permit(:title, :journal, :doi, :author, :email, :phone)
		new_paper["coordinatesystem"] = "MNI"

		coordinates = params["coordinates"]

		coordinates.each do |c|
			if c[1]["x"] != ""
				new_paper["x"], new_paper["y"], new_paper["z"] = c[1]["x"].to_i, c[1]["y"].to_i, c[1]["z"].to_i
				Newpaper.create(new_paper)
			end
		end

		flash[:success] = "Your article has been submitted for verification"
		redirect_to :back
	end

end