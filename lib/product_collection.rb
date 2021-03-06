class ProductCollection
  PRODUCT_TYPES = [
    {dir: "movies", class: Movie},
    {dir: "books", class: Book},
    {dir: "disks", class: Disk}
  ]

  def self.from_dir(dir_path)
    products = []

    PRODUCT_TYPES.each do |hash|
      product_dir = hash[:dir]

      product_class = hash[:class]

      Dir[File.join(dir_path, product_dir, "*.txt")].each do |path|
        products << product_class.from_file(path)
      end
    end

    new(products)
  end

  def initialize(products = [])
    @products = products
  end

  def sort!(by: :title, order: :asc)
    case by
    when :title
      @products.sort_by! { |product| product.to_s }
    when :price
      @products.sort_by! { |product| product.price }
    when :amount
      @products.sort_by! { |product| product.amount }
    end
    @products.reverse! if order == :desc

    self
  end

  def to_s
    @products.map.with_index(1) { |product, index| "#{index}. #{product}" }.join("\n")
  end

  def [](index)
    @products[index - 1]
  end

  def remove_out_of_stock!
    @products.reject! { |product| product.amount.zero? }

    self
  end
end
