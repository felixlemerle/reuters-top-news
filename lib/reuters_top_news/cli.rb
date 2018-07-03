class ReutersTopNews::CLI

  def call
    puts "Reuters Top News:"
    list_news
    menu
  end

  def list_news
    puts <<-DOC.gsub /^\s*/, ''
      1 | Trump makes veiled WTO threat after EU warning | 5:26 PM
      2 | Junior soccer team found alive in Thai cave after nine days | 12:02 PM
      3 | Trump meets with Supreme Court contenders, two in focus | 11:56 AM
      4 | Suspect in planned Cleveland July 4 bombing appears in court | 8:26 AM
      5 | Probe into Facebook's data breach broadens: Washington Post | 8:26 AM
      DOC
  end

end
