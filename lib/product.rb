class Product
  attr_accessor :price, :amount

  def initialize(params)
    @title = params[:title]
    @price = params[:price].to_i
    @amount = params[:amount].to_i
  end

  def self.from_file(path)
    raise NotImplementedError
  end

  def to_s
    "#{@price}. (осталось #{@amount})"
  end
end
