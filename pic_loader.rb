#!/usr/bin/ruby

require File.join(File.dirname(__FILE__), 'pic')

require 'exifr'
require 'set'
require 'fileutils'

class PicLoader 

  def load()
    jpegs =  Dir["./staging/*"]
    
    jpegs.each {|it| process_file(it)}

  end
  
  def create_pics(jpegs)
    pics = Set.new
    
    jpegs.each {|it|  
      pic  = create_pic(it)
      pics << pic
    }
    pics
  end
  
  def process_file(file)
    begin
      move_pic(create_pic(file))
    rescue
      puts "**********Error with File: #{file}"
    end
  end
  
  def move_pic(pic)
      FileUtils.mkdir_p "#{pic.dir_string}"
      FileUtils.mv(pic.file.path, generate_file_name(pic))
      puts "Sorted #{pic.file.path}"
  end
    
  
  def generate_file_name(pic)   
   base_name = File.basename(pic.file.path)
   new_file =  pic.dir_string + base_name
   
   while File.exist?(new_file) do 
     puts "Duplicate Name: #{new_file}"
     
     base_name = "z" + base_name
     new_file =  pic.dir_string + base_name
   end
   new_file
 end 
 
  def create_pic(file)
    pic  = Pic.new()
    pic.file = File.new(file)

    pic.month = EXIFR::JPEG.new(file).date_time.month
    pic.year = EXIFR::JPEG.new(file).date_time.year
    pic.file.close
    pic
  end

end

 PicLoader.new.load