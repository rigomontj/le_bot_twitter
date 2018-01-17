require "twitter"

client.search("#learntocode", lang: "fr").take(10).each do |tweet|
  puts "#{tweet.user.screen_name}: #{tweet.text}"
  client.favorite(tweet)
  client.update("@#{tweet.user.screen_name}: #{tweet.text} Tu veux apprendre à coder GRATUITEMENT ? C'est possible avec thehackingproject.org",
      in_reply_to_status_id: tweet.id)
end
