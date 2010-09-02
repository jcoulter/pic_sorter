#!/usr/bin/ruby

require File.join(File.dirname(__FILE__), 'pic_sorter')
require File.join(File.dirname(__FILE__), 'pic')

require 'exifr'
require 'set'

class PicLoader 

  def load()
    jpegs =  Dir["./staging/*"]
    pics = create_pics(jpegs)
    
    PicSorter.new.sort(pics)

  end
  
  def create_pics(jpegs)
    pics = Set.new
    
    jpegs.each {|it|  
      pic  = Pic.new()
      pic.file = File.new(it)

      pic.month = EXIFR::JPEG.new(it).date_time.month
      pic.year = EXIFR::JPEG.new(it).date_time.year
      pic.file.close
      pics << pic
    }
    pics
  end

end

 PicLoader.new.load