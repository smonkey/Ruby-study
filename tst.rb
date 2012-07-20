#!/usr/bin/env ruby

require 'image_size'
require 'rest-open-uri'

class ImageSizer
  attr_accessor :lk

  def get_size
    open(lk.to_s) do |fh|
      p ImageSize.new(fh.read).get_size
    end
  end

end

imgsizer = ImageSizer.new
puts "Enter image URL:"
imgsizer.lk = gets
imgsizer.get_size
