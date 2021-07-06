class Song
    attr_accessor :artist, :name
   
    @@all = []
    @@count = 0

    def initialize(name)
      @name = name
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

    def artist_name
      if self.artist.nil?
        nil
      else
        self.artist.name
      end
    end
  end