
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    Nokogiri::HTML(html)
    doc = Nokogiri::HTML(html)
    binding.pry
  end
Scraper.new.scrape_index_page(https://learn-co-curriculum.github.io/student-scraper-test-page/index.html)


  def self.scrape_profile_page(profile_url)
    
  end

end

