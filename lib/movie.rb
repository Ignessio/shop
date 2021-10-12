class Movie < Product
  attr_accessor :title, :director, :year

  def self.from_file(file_path)
    lines = File.readlines(file_path, chomp: true, encoding: "utf-8")
    .map { |l| l.chomp}

    new(
      title: lines[0],
      year: lines[1],
      director: lines[2],
      price: lines[3],
      amount: lines[4]
    )
  end

  def initialize(params)
    super
    @title = params[:title]
    @director = params[:director]
    @year = params[:year]
  end

  def to_s
    "Фильм «#{@title}», #{@year}, реж. #{@director}, #{super}"
  end
end
