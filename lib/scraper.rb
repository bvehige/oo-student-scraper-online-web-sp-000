
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    students = []
    doc.css("div.student-card").each do |student|
      name = student.css(".student-name").text 
      location = student.css(".student-location").text
      profile_url = student.css("a").attribute("href").value
      student_info = {:name => name, :location => location, :profile_url => profile_url}
      students << student_info
    end
    students
      
  end

  def self.scrape_profile_page(profile_url)
    doc = Nokogiri::HTML(open(profile_url))
    students = {}
    
    social_icon_container = page.css(".social_icon_container a").collect {|icon|icon.attribute("href").value}
    social_icon_container.each do |link|
      if link.include?("twitter") 
        student[:twitter] = link
      elsif link.include?("linkedin")
        student[:linkedin]
      
  end

end

