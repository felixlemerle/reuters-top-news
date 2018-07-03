class ReutersTopNews::Article
  attr_accessor :title, :authors, :time, :url, :text

  @@all = []

  def initialize(title, author, time, url, text)
    @title = title
    @authors = authors
    @time = time
    @url = url
    @text = text
    @@all << self
  end

  def self.all
    @@all
  end

end
