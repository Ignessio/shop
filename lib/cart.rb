class Cart
  def initialize(products = [])
    @products = products
  end

  def <<(product)
    @products << product
  end

  def total
    @products.sum(&:price)
  end

  def to_s
    @products
      .tally
      .map
      .with_index(1) { |(product, amount), index| "#{index}. #{product} X #{amount} шт." }
      .join("\n")
  end
end
