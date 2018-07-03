class ReutersTopNews::CLI

  def call
    puts "Reuters Top News:"
    list_articles
    start
  end

  def list_articles
    ReutersTopNews::Scraper.get_page
    ReutersTopNews::Article.all.each.with_index(1) do |article, i|
      puts "#{i} | #{article.title} | #{article.time}"
    end
#    puts <<-DOC.gsub /^\s*/, ''
#      1 | Trump makes veiled WTO threat after EU warning | 5:26 PM
#      2 | Junior soccer team found alive in Thai cave after nine days | 12:02 PM
#      3 | Trump meets with Supreme Court contenders, two in focus | 11:56 AM
#      4 | Suspect in planned Cleveland July 4 bombing appears in court | 8:26 AM
#      5 | Probe into Facebook's data breach broadens: Washington Post | 8:26 AM
#      DOC
  end

  def start
    input = nil
    while input != "exit"
      puts "Please type the number of the article you would want to read, list or exit:"
      input = gets.strip
      if input == "list"
        list_articles
      elsif (input.to_i <= 0 || input.to_i > 5) && input != "exit"
        puts "Incorrect input."
      elsif input.to_i > 0 && input.to_i <= 5
        puts "1-5"
      end
    end
    puts "Thank you for using Reuters Top News! Goodbye."
  end

end
