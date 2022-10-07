Dir["./code/*.rb"].each {|file| require file }


#url = "#url = "http://www.someurl.com/processed_files/JSONFILE_2022.csv"
url = "feed-products/newwebsite.csv"
parser = Getapp::Parsecsv.new
parser.read(url, header = true)

#url = "http://www.someurl.com/processed_files/JSONFILE_2022.json"
url = "feed-products/softwareadvice.json"
parser = Getapp::Parsejson.new
parser.read(url)

#url = "http://www.someurl.com/processed_files/JSONFILE_2022.yaml"
url = "feed-products/capterra.yaml"
parser = Getapp::Parseyaml.new
parser.read(url)