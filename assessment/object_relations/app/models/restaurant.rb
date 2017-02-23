class Restaurant

  attr_accessor :name, :reviews, :customers

  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @customers = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find{|rest| rest.name == name}
  end

end
