99.downto(1) do |n|
  s = ( n == 1 ? "" : "s" )
  punct = ( n % 10 == 0 ? "!" : "." )
  puts "#{n} bottle#{s} of beer on the wall, #{n} bottle#{s} of beer#{punct}"
  n -= 1
  n = "no more" if n == 0
  puts "Take one down, pass it around, #{n} bottle#{s} of beer on the wall.\n\n"
end
puts %(No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.)
