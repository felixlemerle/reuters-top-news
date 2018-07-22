class ReutersTopNews::Scraper

  def get_page
    Nokogiri::HTML(open("https://www.reuters.com/"))
  end

  def scrape_articles
    url = self.get_page.css("h2.story-title")[0].children[1].attributes["href"].value
    page = Nokogiri::HTML(open("https://www.reuters.com" + url))

    title = page.css("h1.ArticleHeader_headline")[0].children[0].text
    time = page.css("div.ArticleHeader_date")[0].children[0].text

    authors_array = page.css("div.BylineBar_byline")[0].children
    authors = ""
    authors_array.each do |author|
      if authors != ""
        authors += ", "
      end
      authors += author.children[0].children[0].text
    end

    text_array = page.css("div.StandardArticleBody_body")[0].children
    text = []
    text_array.each do |element|
      if element.name == "p"
        text << element.children[0].text
      end
    end
  end

end
