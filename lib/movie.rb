class Movie < Product
  attr_accessor :title, :director, :year

  def self.from_file(path)
    lines = File.readlines(path, chomp: true, encoding: 'utf-8')
    .map { |l| l.chomp}

    self.new(
      title: lines[0],
      year: lines[1].to_i,
      director: lines[2],
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

  def initialize(params)
    super
    @title = params[:title]
    @director = params[:director]
    @year = params[:year]
  end


  def to_s
    "Фильм \"#{@title}\", #{@year}, реж. #{@director}, #{super}"
  end
end
