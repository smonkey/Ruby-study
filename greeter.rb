#!/usr/bin/env ruby

class Greeter
  attr_accessor :names

  #Create the object
  def initialize(names = "World")
    @names = names
  end

  #Say hi to everybody
  def say_hi
    if names.nil?
      puts "..."
    elsif @names.respond_to?("each")

      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello, #{name}!"
      end
    else
      puts "Hello, #{@names}"
    end
  end

  # Say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif
      @names.respond_to?("join")
      # Join the list elements with commas
      puts "Goodbye, #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye, #{@names}. Come back soon!"
    end
  end
end

  if __FILE__ == $0
    g = Greeter.new
    g.say_hi
    g.say_bye

    g.names = ["Sergey", "Alexey", "John Smith"]
    g.say_hi
    g.say_bye
  end
