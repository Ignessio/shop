class Movie < Product
  attr_accessor :title, :director, :year

  def initialize(params)
    super
    @title = params[:title]
    @director = params[:director]
    @year = params[:year]
  end

  def from_file
  end

  def to_s
    "Фильм \"#{@title}\", #{@year}, реж. #{@director}, #{super}"
  end
end
