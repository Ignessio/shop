class Book < Product
  attr_accessor :title, :author, :genre

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
