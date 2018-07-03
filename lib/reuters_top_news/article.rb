class ReutersTopNews::Article
  attr_accessor :title, :time, :url, :text

  @@all = []

  def initialize(title, time, url, text)
    @title = title
    @time = time
    @url = url
    @text = text
    @@all << self
  end

  def self.all
    @@all
  end

end
