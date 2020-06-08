class Post
    attr_accessor :author, :title
   
    @@all = []
    @@count = 0

    def initialize(title)
      @title = title
      @@count += 1
      save
    end
   
    def save
      @@all << self
    end
   
    def self.all
      @@all
    end

    def self.count
      @@count
    end

    def author_name
      if self.author.nil?
        nil
      else
        self.author.name
      end
    end
  end