# encoding: UTF-8

require 'json'
require 'uri'
require 'optparse'

# Same with Search.rb and its function, but without parameters.

def random()
  url_data = URI("https://api.urbandictionary.com/v0/random")
  response = Net::HTTP.get(url_data)
  data = JSON.parse(response)
  datalist = data["list"].first

  # Title and date of thread
  puts "#{datalist['word']} - #{datalist['written_on']}"
  puts "Upvote: #{datalist['thumbs_up']} Downvote: #{datalist['thumbs_down']}"
  puts ""

  # Definition
  raw_def = "#{datalist['definition']}"
  clean_def = raw_def.gsub(/\[|\]/, '')
  puts clean_def
end

