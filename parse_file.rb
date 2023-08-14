require 'nokogiri'

file_path = ARGV[0] # Get the file path from command line arguments

if file_path.nil?
  puts "File required"
  exit
end

file_content = File.read(file_path)
parsed_content = Nokogiri::HTML(file_content)

puts parsed_content.to_s

