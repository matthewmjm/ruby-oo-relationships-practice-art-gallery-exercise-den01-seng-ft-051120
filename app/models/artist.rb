class Artist

  attr_reader :name, :years_experience

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.map { |painting| painting.artist == self ? painting.title : nil}.compact
  end

  def galleries
    Painting.all.map { |painting| painting.artist == self ? painting.gallery.name : nil}.compact
  end

  def cities
    Painting.all.map { |painting| painting.artist == self ? painting.gallery.city : nil}.compact
  end

  def self.total_experience
    result = Artist.all.map { |artist| artist.years_experience}
    result.reduce(0) { |sum, years_experience| sum + years_experience}
  end

  #Returns an instance of the artist with the highest amount of paintings per year of experience
  # def self.most_prolific
  #   result = Painting.all.map { |painting| painting.artist.name}.compact
  #   years_exp = Artist.all.map { |artist| artist.years_experience }.compact
  #   num_paintings = Painting.all.map { |painting| painting.artist.name}.compact
  #   final_result = result.reduce(Hash.new(0)) { |hash, count| hash[count] += 1; hash }
  #   # final_result.each_with_object({}) { |hash, (key, value)| hash[key] = value/artist  }
  # end
  # def self.most_prolific
  #   result = Painting.all.map { |painting| painting.artist.name}.compact
  #   final_result = result.reduce(Hash.new(0)) { |hash, count| hash[count] += 1; hash }
  # end

  #artist, gallery, title, price
  def create_painting(title, price, gallery)
    Painting.new(self, gallery, title, price)
  end




end
