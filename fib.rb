#!/usr/bin/ruby
#
# This script takes an number (n) and 
# lists all the Fibonacci numbers 0 through n
# using a technique called Dynamic Programming
#
# Author: Rishi Verma

if (ARGV.empty?)
  puts "Usage: "+$0+" <number>"
  exit 0
else
  n = ARGV[0].to_i
end

# Store fib numbers so we don't recalculate - this is a
# key idea in dyn programming, and why its better than 
# mere recursion-based approach
fib_map = { 0 => 0, 1 => 1 }

# Loop and build up fib numbers, always reusing prev fibs
(2..n).each do |i|
  fib_map[i] = fib_map[i-2] + fib_map[i-1]
end

puts fib_map.values
