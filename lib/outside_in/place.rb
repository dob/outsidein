module OutsideIn

  class Point
    attr_reader :lat, :lng
    
    def initialize(point_string)
      @lat, @lng = point_string.split(' ')
    end
  end
  
  class Place
    attr_reader :id, :name, :url, :point

    def initialize(place_hash)
      @id = place_hash['id']
      @name = place_hash['name']
      @url = place_hash['url']
      @point = Point.new(place_hash['georss:point'])
    end
  end
end
