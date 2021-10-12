class Book < Product
  attr_accessor :title, :author, :genre

  def self.from_file(file_path)
    lines = File.readlines(file_path, chomp: true, encoding: "utf-8")
    .map { |l| l.chomp}

    new(
      title: lines[0],
      genre: lines[1],
      author: lines[2],
      price: lines[3],
      amount: lines[4]
    )
  end

  def initialize(params)
    super
    @title = params[:title]
    @author = params[:author]
    @genre = params[:genre]
  end

  def to_s
    "Книга «#{@title}», #{@genre}, автор - #{@author}, #{super}"
  end
end
