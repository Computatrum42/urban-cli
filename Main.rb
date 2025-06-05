#!/usr/bin/env ruby

require 'net/http'
require 'json'
require 'uri'
require 'optparse'

require_relative 'Funcs'

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

# Detecting the search term
search_term = ARGV[0]

# Execute the function from Random.rb 
if options[:option] == "random"
  fetch("https://api.urbandictionary.com/v0/random")
  # The function from Search.rb
elsif search_term
  fetch("https://api.urbandictionary.com/v0/define?term=" + search_term)
  # If you mess up the command
else
  puts "Please enter a word or an option."
  puts parser
end
