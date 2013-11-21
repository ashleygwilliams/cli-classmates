require 'open-uri'
require 'nokogiri'

class Scraper
  attr_reader :html

  def initialize(url)
    download = open(url)
    @html = Nokogiri::HTML(download)
  end

  def get_students_names
    all_the_h3s = @html.search(".blog")
    all_the_h3s.text
  end

end



#  My folder
#  -> sub-folder

# My folder/sub-folder

# class
# -> class method 
# -> constant

# class::class_method
# class::constant