module OutsideIn
  
  class Radar
    attr_accessor :stories, :tweets

    def initialize(lat, lng, radius=nil, only=nil, except=nil)
      @lat = lat
      @lng = lng
      @radius = radius
      @only = only
      @except = except
      @stories = []
      @tweets = []
      hit_api
    end

    def hit_api
      res = JSON.parse(request)
      populate_stories_and_tweets(res)
    end

    def populate_stories_and_tweets(radars)
      radars.each do |radar|
        if radar["type"] == "Story"
          @stories << OutsideIn::Story.new(radar)
        elsif radar["type"] == "Tweet"
          @tweets << OutsideIn::Tweet.new(radar)
        end
      end
    end

    def construct_url
      url = "#{OutsideIn::JSON_ENDPOINT}?lat=#{@lat}&lng=#{@lng}"
      url += "&radius=#{@radius}" if @radius
      url += "&only=#{@only}" if @only
      url += "&except=#{@except}" if @except
      url
    end
    
    def request
      url = URI.parse(construct_url)
      res = Net::HTTP.get(url)
    end
    
  end
  
end

