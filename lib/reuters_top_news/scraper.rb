class ReutersTopNews::Scraper
  def get_page
    Nokogiri::HTML(open("https://www.reuters.com/"))
  end

#:title, :authors, :time, :url, :text
  def scrape_articles
    title = self.get_page.css("h2.story-title")[0].children[1].children[0].text
    url = self.get_page.css("h2.story-title")[0].children[1].attributes["href"].value
    page = Nokogiri::HTML(open("https://www.reuters.com" + url))
    time = page.css("div.date_V9eGk")[0].children[0].text
    authors_array = page.css("div.byline_31BCV")[0].children
    authors = ""
    authors_array.each do |author|
      if authors != ""
        authors += ", "
      end
      authors += author.children[0].children[0].text
    end
#    text = page.css
  end
end
