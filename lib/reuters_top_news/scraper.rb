class ReutersTopNews::Scraper
  def self.get_page
    Nokogiri::HTML(open("https://www.reuters.com/"))
  end

#  def scrape_articles
#  end
end
