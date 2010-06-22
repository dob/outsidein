module OutsideIn
  class Tag
    attr_reader :name, :url

    def initialize(tag_hash)
      @name = tag_hash['name']
      @url = tag_hash['url']
    end
  end
end
