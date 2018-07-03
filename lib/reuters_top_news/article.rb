class ReutersTopNews::Article
  attr_accessor :title, :author, :time, :url, :text

  @@all = []

  def initialize(title, author, time, url, text)
    @title = title
    @author = author
    @time = time
    @url = url
    @text = text
    @@all << self
  end

  def self.all
    @@all
  end

end
