module OutsideIn
  class Tweet
    attr_reader :item_id, :icon_path, :author, :author_url, :published_at, :body, :url, :image_url, :places

    def initialize(tweet_hash)
      @item_id = tweet_hash['item_id']
      @icon_path = tweet_hash['icon_path']
      @author = tweet_hash['author']
      @author_url = tweet_hash['author_url']
      @published_at = tweet_hash['published_at']
      @body = tweet_hash['body']
      @url = tweet_hash['url']
      @image_url = tweet_hash['image_url']
      @places = []
      populate_places(tweet_hash)
    end

    private
    def populate_places(tweet_hash)
      tweet_hash["places"].each do |place|
        @places << OutsideIn::Place.new(place)
      end
    end
    
  end
end
