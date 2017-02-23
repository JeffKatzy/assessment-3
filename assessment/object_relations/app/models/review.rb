class Review

  attr_accessor :thoughts, :restaurant, :customer

  @@all = []

  def initialize(thoughts, restaurant_name)
    @thoughts = thoughts
    if Restaurant.find_by_name(restaurant_name)
      @restaurant = Restaurant.find_by_name(restaurant_name)
    else
      @restaurant = Restaurant.new(restaurant_name)
    end
    @restaurant.reviews << self
    @@all << self
  end

  def self.all
    @@all
  end

end
