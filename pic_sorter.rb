#!/usr/bin/ruby


#gem install exifr

#require File.join(File.dirname(__FILE__), 'farm_loader')
#require File.join(File.dirname(__FILE__), 'alpaca_loader')
#require File.join(File.dirname(__FILE__), 'farm_scraper')
#require File.join(File.dirname(__FILE__), 'alpaca_scraper')

require 'rubygems'
require 'exifr'


class PicSorter


  def sort
    puts EXIFR::JPEG.new('pics/IMG_1906.JPG').width 
    puts EXIFR::JPEG.new('pics/IMG_1906.JPG').date_time


    puts Time.new
  end
end




#require 'rubygems'
#require 'exifr'

#input_file = ARGV[0]

# get the date/time info from the JPEG file
#d1 = EXIFR::JPEG.new(input_file).date_time

# convert to the format we need
#d = 'Wed Apr 01 13:51:16 -0800 2009'
#a,b,d,hms,poop,y = d1.to_s.split
#d2 = "#{a} #{b} #{d} #{hms} #{y}"

# create a real date
#d3 = DateTime::strptime(d2, '%a %b %d %H:%M:%S %Y')

# get this date in the desired format
#s = d3.strftime('%Y%m%d.%H%M%S')
#puts s
