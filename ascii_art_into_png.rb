gem 'chunky_png', '~> 1.3', '>= 1.3.5'
require 'chunky_png'

height = File.open('coffee.txt').readlines.size
width = 0
File.open('coffee.txt', 'r').readlines.each do |l|
  width = l.length > width ? l.length : width
end

png = ChunkyPNG::Image.new(width, height + 1)
File.open('coffee.txt', 'r') do |f|
  f.each_line do |l|
    l.length.times do |i|
      next if l[i] == "\n"
      png[i, f.lineno] = ChunkyPNG::Color('white @ 0.5') unless l[i] == " "
    end
  end
end
png.save('logo.png', interlace: true)
