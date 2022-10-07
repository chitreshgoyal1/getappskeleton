module Getapp
	class Common
		attr_accessor :data
		attr_accessor :url

		@@title = ["Name:", "Categories:", "Twitter:"]

		def console_output
	  		puts "Importing: #{@@title[0]} #{data[0]} #{@@title[1]} #{data[1]} #{@@title[2]} #{data[2]}"
		end

		def file_url(url)
			if url =~ URI::regexp
	    		puts "Read from external url: #{url}"
	    		open(url)
	    	else
	    		puts "Read from location: #{url}"
	    		File.read(url)
			end
		end
	end
end