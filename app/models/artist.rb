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
    Painting.all.select {|painting| painting.artist == self}
  end

  def galleries
    paintings.map {|painting| painting.gallery}
  end

  def cities
    galleries.map {|gallery| gallery.city}
  end

  def self.total_experience
    self.all.map(&:years_experience).sum
  end

  def self.most_prolific
    # binding.pry
    # (self.all.map {|artist| artist.years_experience}).map {|artist| artist / self.all.map {|artist| artist.paintings}.count}

    # years = self.all.map {|artist| artist.years_experience} / self.all.map {|artist| artist.paintings}.count
  end

  def self.create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end
