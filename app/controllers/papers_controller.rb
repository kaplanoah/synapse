class PapersController < ApplicationController

	def index
		@papers = Paper.all

		@papers.each do |p|
			begin
				if ( p.title.nil? ) && ( p.journal == "Cerebral Cortex" || p.journal == "NeuroImage" || p.journal == "Brain"
					@url = "http://doi.org/#{p.doi}" )

					httpc = HTTPClient.new
					resp = httpc.get(@url)
					resp = resp.header['Location']

					open(@url) do |resp|
						@link = resp.base_uri.to_s
					end

					p.update_attribute(:title, Nokogiri::HTML::Document.parse(HTTParty.get(@link).body).title)
				end
			rescue
				p.update_attribute(:title, "Title not available")
			end
		end
		render text: "Done!"
	end

	def search
		search = params[:search]
		x, y, z = search['x'].to_i, search['y'].to_i, search['z'].to_i
		range = params[:range].to_i

		@title = "Title"
		@results = Paper.where( :x => (x-range..x+range), :y => (y-range..y+range), :z => (z-range..z+range) )
	end

end
