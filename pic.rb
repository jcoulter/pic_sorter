#!/usr/bin/ruby

class Pic
  
  attr_accessor :file,
  :year,
  :month
  
  def to_s
    "Pic => :file = #{self.file}, :month = #{self.month}, :year = #{self.year}"
  end
  
  def dir_string
   "#{self.year}/#{self.month}/"
  end
end

