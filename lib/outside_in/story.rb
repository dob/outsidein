module OutsideIn
  class Story
    attr_reader :item_id, :icon_path, :author, :author_url, :published_at, :title, :body, :url, :tags, :places

    def initialize(story_hash)
      @item_id = story_hash['item_id']
      @icon_path = story_hash['icon_path']
      @author = story_hash['author']
      @author_url = story_hash['author_url']
      @published_at = story_hash['published_at']
      @title = story_hash['title']
      @body = story_hash['body']
      @url = story_hash['url']
      @tags = []
      @places = []
      populate_tags(story_hash)
      populate_places(story_hash)
    end

    private
    def populate_tags(story_hash)
      story_hash["tags"].each do |tag|
        @tags << OutsideIn::Tag.new(tag)
      end
    end
    
    def populate_places(story_hash)
      story_hash["places"].each do |place|
        @places << OutsideIn::Place.new(place)
      end
    end
    
  end
end
