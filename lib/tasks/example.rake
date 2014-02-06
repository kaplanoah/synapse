task :title_to_csv => :environment do 

	begin
		file = File.open("title.csv", "w")
		
		Title.all.each do |title|
			title_hash = title.attributes
			file.write("#{title_hash['title']}, #{title_hash['doi']} \n")
		end

	rescue IOError => e
		puts "Something went wrong #{e.message}"
	ensure
		file.close unless file == nil
	end

end