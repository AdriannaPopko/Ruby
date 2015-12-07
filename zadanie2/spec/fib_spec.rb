require 'simplecov'
SimpleCov.start

require_relative '../lib/fib'

RSpec.describe 'fib.rb' do
  describe '#fib' do
    it 'should be defined' do
      expect { fib(1000) }.not_to raise_error
    end
    it 'should be defined for natural numbers' do
      expect(fib(1)).to eq(1)
      expect(fib(3)).to eq(2)
    end
    it 'should not be equal to factorial' do
      expect(fib(4)).not_to eq(8)
      expect(fib(1)).not_to eq(0)
    end
    it 'should be defined for zero' do
      expect(fib(0)).to eq(0)
    end
  end
end