require 'pry'
x = File.dirname(__FILE__)
$:.unshift File.join(File.dirname(x),'..','lib')
binding.pry
puts TLPI.constants
