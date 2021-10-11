require_relative "lib/product"
require_relative "lib/movie"
require_relative "lib/book"


book = Book.new
book = Book.from_file('./data/books/01.txt')

file

# movies = Dir[File.join(__dir__, "data/movies", "*.txt")]
# books = Dir[File.join(__dir__, "data/books", "*.txt")]

# all_movies = movies.map do |movie|
#   movie = File.readlines(movie, chomp: true, encoding: 'utf-8')
#   Hash(title: movie[0], year: movie[1], director: movie[2], price: movie[3], amount: movie[4])
# end

# all_books = books.map do |i|
#   i = File.readlines(i, chomp: true, encoding: 'utf-8')
#   Hash(title: i[0], genre: i[1], author: i[2], price: i[3], amount: i[4])
# end

# products = []

# all_movies.each do |params|
#   products << Movie.new(params)
# end

# all_books.each do |params|
#   products << Book.new(params)
# end

# products.each { |product| puts product }

# products = []
# products << Movie.new(title: "Леон", year: 1994, director: "Люк Бессон", price: 990, amount: 5)
# products << Movie.new(title: "Дурак", year: 2014, director: "Юрий Быков", price: 390,  amount: 1)
# products << Book.new(title: "Идиот", genre: "роман", author: "Федор Достоевский", price: 1500, amount: 10)
