require_relative "lib/product"
require_relative "lib/movie"
require_relative "lib/book"

params = {price: 290, amount: 1}

leon = Product.new(params)
puts "Фильм Леон стоит #{leon.price} руб."
