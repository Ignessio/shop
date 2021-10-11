class Product
  attr_accessor :price, :amount

  def initialize(params)
    @title = params[:title]
    @price = params[:price]
    @amount = params[:amount]
  end

  def from_file(path)
  end

  def to_s
    "#{@price}. (осталось #{@amount})"
  end
end
