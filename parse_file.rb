require 'nokogiri'

file_path = ARGV[0] # Get the file path from command line arguments

if file_path.nil?
  puts "File required"
  exit
end

file_content = File.read(file_path)
parsed_content = Nokogiri::HTML(file_content)
parsed_content_html5 = Nokogiri::HTML5(file_content)
parsed_content_forced = Nokogiri::HTML(file_content.encode('UTF-8'))

puts "Regular parsed content:"
puts parsed_content.to_s

puts "Forced encoded content:" 
puts parsed_content_forced.to_s

puts "HTML5 parsed content:"
puts parsed_content_html5.to_s

