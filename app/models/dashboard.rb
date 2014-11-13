class Dashboard
  attr_reader :categories, :locations, :user

  def initialize(user, locations = Location.all, categories = Category.all)
    @locations = locations
    @categories = categories
    @user = user
  end

  def location
    Location.new
  end

  def category(*args)
    Category.new(*args)
  end

  def user_email
    @user.email
  end

  def categories_names
    @categories.map { |category| category.name }
  end
end