require 'Nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    html = open(index_url)
    Nokogiri::HTML(html)
    doc = 
    binding.pry
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

Scraper.scrape_index_page(https://learn-co-curriculum.github.io/student-scraper-test-page/index.html)