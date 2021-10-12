class Disk < Product
  attr_accessor :title, :style, :artist, :year

  def self.from_file(file_path)
    lines = File.readlines(file_path, chomp: true, encoding: "utf-8")
    .map { |l| l.chomp}

    new(
      title: lines[0],
      style: lines[1],
      year: lines[2],
      artist: lines[3],
      price: lines[4],
      amount: lines[5]
    )
  end

  def initialize(params)
    super
    @title = params[:title]
    @style = params[:style]
    @artist = params[:artist]
    @year = params[:year]
  end

  def to_s
    "Альбом «#{@title}», #{style}, #{@year}, исполнитель: #{@artist}, #{super}"
  end
end
