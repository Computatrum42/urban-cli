#!/usr/bin/env ruby

require 'net/http'
require 'json'
require 'uri'
require_relative 'Search'
require_relative 'Random'

require 'optparse'

options = {}

parser = OptionParser.new do |opts|
  opts.banner = "USAGE: urban-cli [word] or urban-cli [flag] [option]"
  
  opts.on("-o", "--option OPTION", "Option to use (example: random)") do |opt|
    options[:option] = opt
  end

  opts.on("-h", "--help", "Help message") do
    puts opts
    exit
  end
end

parser.parse!

# The term to search
search_term = ARGV[0]

# Execute the function from Random.rb 
if options[:option] == "random"
  random()
  # The function from Search.rb
elsif search_term
  search(search_term)
  # If someone messes up while writing
else
  puts "Please enter a word or an option."
  puts parser
end


#word = gets
#search(word)
