include "twitter"

journalists.each do |journalist|
  journalist.delete! "@"
  client.follow(journalist)
  sleep(60)
  end
