require 'net/http'
require 'json'
require 'uri'
# require 'optparse'
require_relative 'Search'

=begin
options = {}

parser = OptionParser.new do |opts|
  opts.banner = "Usage: urban-cli [word] [options]"

  opts.on("-o", "--option OPTION", "Option to use (ex: random)") do |opt|
    options[:option] = opt
  end
  opts.on("-h", "--help", "Help message") do
    puts opts
    exit
  end
end
parser.parse!
=end

search("Shoebill")

# test function for some reason

def main
  puts "testing, wip".reverse
  return
end

# 3.times do main() end

