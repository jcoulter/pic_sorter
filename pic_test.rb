#!/usr/bin/ruby

  require File.join(File.dirname(__FILE__), 'pic')

  require "test/unit"
  require "set"
 
  class PicTest < Test::Unit::TestCase
    
    
    def test_sorter
      pic = Pic.new()
      pic.year = "2010"
      pic.month = "6"
      assert_equal "2010/6/", pic.dir_string 
      
    end
    
  
    
    
    
  end