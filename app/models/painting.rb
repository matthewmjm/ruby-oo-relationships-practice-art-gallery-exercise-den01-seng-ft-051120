class Painting

  attr_reader :artist, :gallery, :title, :price

  @@all = []

  def initialize(artist, gallery, title, price)
    @artist = artist
    @gallery = gallery
    @title = title
    @price = price
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    result = Painting.all.map { |painting| painting.price}
    result.reduce(0) { |sum, price| sum + price }
  end

end
