class Book < Product
  attr_accessor :title, :author, :genre

  def self.from_file(path)
    lines = File.readlines(path, chomp: true, encoding: 'utf-8')
    .map { |l| l.chomp}

    self.new(
      title: lines[0],
      genre: lines[1],
      author: lines[2],
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

  def initialize(params)
    super
    @title = params[:title]
    @author = params[:author]
    @genre = params[:genre]
  end

  def from_file(path)
    book = File.readlines(path)
    p book
  end

  def to_s
    "Книга \"#{@title}\", #{@genre}, автор - #{@author}, #{super}"
  end
end
