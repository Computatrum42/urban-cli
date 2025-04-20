require 'net/http'
require 'json'
require 'uri'

puts "Enter a word:"
word = gets

url_data = URI("https://api.urbandictionary.com/v0/define?term=" + word)
response = Net::HTTP.get(url_data)
data = JSON.parse(response)
datas = data["list"].first

puts "Word: #{datas['word']}"
puts ""
puts "Definition: #{datas['definition']}"



def main
  puts "testing, wip".reverse
  return
end

# 3.times do main() end

# Work in progress!
