include "twitter"

client.search("Web").take(15).each do |tweet|
  if tweet.user(journalists)
    client.favorite(tweet)
  end
end
