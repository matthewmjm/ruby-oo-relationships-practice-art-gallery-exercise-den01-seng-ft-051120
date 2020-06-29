class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
      Painting.all.map { |painting| painting.gallery == self ? painting.title : nil}.compact
  end

  def artists
    Painting.all.map { |painting| painting.gallery == self ? painting.artist.name : nil}.compact
  end

  #Returns an instance of the most expensive painting in a gallery
  def most_expensive_painting
    Painting.all.max_by { |painting| painting.price }
  end



end
