require 'json'
require 'uri'

def fetch(url)
    url_data = URI(url)
    response = Net::HTTP.get(url_data)
    data = JSON.parse(response)
    datalist = data["list"].first

    # Let's print these nonsense to the shell
   
    puts "#{datalist['word']} by #{datalist['author']} - #{datalist['written_on']}"
    puts "Upvote: #{datalist['thumbs_up']} Downvote: #{datalist['thumbs_down']}"
    puts ""
    raw_def = "#{datalist['definition']}"
    clean_def = raw_def.gsub(/\[|\]/, '')
    puts clean_def
end
