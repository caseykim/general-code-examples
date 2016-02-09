gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'

def reverse(str)
  result = ""
  for i in 0...str.length do
    result = str[i] + result
  end
  result
end

def reverse_using_array(str)
  result = []
  str = str.chars
  str.count.times do
    result << str.pop
  end
  result.join
end

class ReverseTest < Minitest::Test
  def test_reverse
    assert_equal "hello", reverse("olleh")
  end
  def test_reverse_using_array
    assert_equal "hello", reverse_using_array("olleh")
  end
end
