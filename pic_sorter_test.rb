#!/usr/bin/ruby

  require File.join(File.dirname(__FILE__), 'pic_sorter')
  require File.join(File.dirname(__FILE__), 'pic')

  require "test/unit"
  require "set"
 
  class PicSorterTest < Test::Unit::TestCase
    
    
    def test_sorter
      sorter = PicSorter.new
      assert !sorter.nil?
    
      
    end
    
    def create_pics
      pics = Set.new
      
      pics
    end
    
  end