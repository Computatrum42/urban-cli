require 'json'
require 'uri'
require 'optparse'

def search(word)
  url_data = URI("https://api.urbandictionary.com/v0/define?term=" + word)
  response = Net::HTTP.get(url_data)
  data = JSON.parse(response)
  datalist = data["list"].first

  # Title and date of thread
  puts "#{datalist['word']} - #{datalist['written_on']}"

  # Definition
  raw_def = "#{datalist['definition']}"
  clean_def = raw_def.gsub(/\[|\]/, '')
  puts clean_def
end
