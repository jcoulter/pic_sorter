#!/usr/bin/ruby


#gem install exifr

require File.join(File.dirname(__FILE__), 'pic')

require 'fileutils'
require 'set'


class PicSorter


  def sort(pics)
    pics.each {|it| 
      FileUtils.mkdir_p "#{it.dir_string}"
      FileUtils.mv(it.file.path, generate_file_name(it))
      puts "Sorted #{it.file.path}"
    }
    
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
end



