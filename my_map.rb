class Array
  def my_map(&block)
    result = []
    self.count.times do |i|
      result.push(block.call(self[i]))
    end
    result
  end
end
