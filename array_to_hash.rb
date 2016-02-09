require 'rspec'

class ArrayToHash
  attr_accessor :result

  PARAMS_ARRAY = [
    ['working', 'husky'],
    ['sporting', 'labrador'],
    ['non-working', 'poodle'],
    ['sporting', 'pointer'],
    ['working', 'bernese mountain dog']
  ]

  def self.make_hash
    PARAMS_ARRAY.inject( Hash.new([]) ) do |hash, (key, value)|
      hash[key.gsub('-', '_').to_sym] += [value]
      hash
    end
  end
end

RSpec.describe 'ArrayToHash#make_hash' do
  it 'creates hash from array' do
    expected = {
      working: ['husky', 'bernese mountain dog'],
      sporting: ['labrador', 'pointer'],
      non_working: ['poodle']
    }
    expect(ArrayToHash.make_hash).to eq(expected)
  end
end
