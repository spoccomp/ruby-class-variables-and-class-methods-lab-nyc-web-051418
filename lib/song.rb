require 'pry'


class Song

  attr_accessor :name, :artist, :genre

  @@all = [] #keep track of all the songs, class array
  @@genres = [] #class array
  @@artists = [] #class array
  @@count = 0 # class variable
  @@artist_count
  @@genre_count

  def initialize(name, artist, genre)#name = name song, aritst= name of artist
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@all << self #stores all instantances of this class

    @@artists << @artist #stores all artists of this class
    @@genres << @genre
    #binding.pry
  end

  def self.count #class method (self) that returns the count of all songs
    @@count
  end

  def self.artists #class method (self) that returns an array of artists
    # @@artists.map do |l|
    #   @artist
    # end
    @@artists.uniq

  end
  def self.genres #class method (self) that returns and array of genres
    @@genres.uniq
  end
  # def to_HG
  #   inject(Hash.new (0)){ |hash, key| hash[key] += 1;h })
  #   end

  def self.genre_count
    #@@genres[genres.group_by {|v| v}.map{|k,v| [k, v.size]}]
    #below is array output
    #list = @@genres.group_by{|v| v}.map{|k,v|[k,v.size]}
    # list.reverse
    #@@genres.to_HG
    # binding.pry
    hash = Hash.new 0
    @@genres.map {|genre| hash[genre] += 1}
    hash
  end

  def self.artist_count
    #list = @@artists.group_by{|v| v}.map{|k,v|[k,v.size]}
    # Hash[@@artists.map{|key, value| [key,value]}]
    #Hash[@@artists.map{|key, value| [key,value]}]
    hash = Hash.new 0 #creates new destination hash
    @@artists.map {|artist| hash[artist] += 1}#maps array into hash
    hash # returns the new hash
  end
end
