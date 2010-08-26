#!/usr/bin/ruby

require File.join(File.dirname(__FILE__), 'pic_sorter')
require File.join(File.dirname(__FILE__), 'pic')

require 'rubygems'
require 'rubygems'
require 'exifr'
require 'set'

class PicLoader 

def load()
  puts "HI"
  jpegs =  Dir["./staging/*"]
  
  puts "jpegs = #{jpegs}"
  
  puts jpegs.class
  
  pics = Set.new
  
  jpegs.each {|it|  
  puts EXIFR::JPEG.new(it).width  
  
  pic  = Pic.new()
  pic.file = File.new(it)
  
  pic.month = EXIFR::JPEG.new(it).date_time.month
  pic.year = EXIFR::JPEG.new(it).date_time.year
  puts pic
  pics << pic
  }
  
  puts pics

end
# load a list of all files in pic
# pass that list of files to image sorter
end

 PicLoader.new.load