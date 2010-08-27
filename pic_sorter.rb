#!/usr/bin/ruby


#gem install exifr

require File.join(File.dirname(__FILE__), 'pic')

require 'rubygems'
require 'set'


class PicSorter


  def sort(pics)
    pics.each {|it| puts "Sorting #{it} should go to dir #{Dir.pwd}/#{it.dir_string}"}
    
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
