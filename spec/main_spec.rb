require 'spec_helper'
require './main.rb'

RSpec.describe Object, 'goldern mountain algorithm' do
  it 'should calculate correct' do
    expect(calculate([[9], [3,1], [4,1,2], [7,8,9,11]])).to eq(24)
    expect(calculate([[7], [2,3], [3,3,1], [3,1,5,4], [3,1,3,1,3], [2,2,2,2,2,2], [5,6,4,5,6,4,3]])).to eq(29)
  end

  it 'should correct calculate pyramid from file' do
    pyramid = []
    File.open('./pyramid.txt', 'r').each do |line|
      pyramid.push line.split(',').map { |e| e.strip.to_i }
    end
    expect(calculate(pyramid)).to eq(24)
  end
end
