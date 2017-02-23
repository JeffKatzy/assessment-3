class Customer

  attr_accessor :name, :reviews, :restaurants

  @@all = []

  def initialize(name)
    @name = name
    @reviews = []
    @restaurants = []
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find{|cust| cust.name == name}
  end

  def add_review(thoughts, restaurant_name)
    review = Review.new(thoughts, restaurant_name)
    review.customer = self
    review.restaurant.customers << self
    @restaurants << review.restaurant
    @reviews << review
  end

end


# Customer.new('bob')
  # <>
# customer = customer.add_review('it was good', Restaurant.new)
  # result: a new review tied ot the restaurant, and tied to the customer
