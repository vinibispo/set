# frozen_string_literal: true

require 'rspec'
require_relative '../lib/set'

RSpec.describe Set do
  describe '#empty?' do
    it 'returns true for an empty set' do
      set = Set.new

      expect(set.empty?).to eq(true)
    end

    it 'returns false for a non-empty set' do
      set = Set.new

      set.add('1')

      expect(set.empty?).to eq(false)
    end
  end

  describe '#size' do
    it 'returns 0 for an empty set' do
      set = Set.new

      expect(set.size).to eq(0)
    end

    it 'returns 1 for a set with one element' do
      set = Set.new

      set.add('1')

      expect(set.size).to eq(1)
    end

    it 'returns 2 for a set with two elements' do
      set = Set.new

      set.add('1')
      set.add('2')

      expect(set.size).to eq(2)
    end
  end

  describe '#contains?' do
    it 'returns false for an empty set' do
      set = Set.new

      expected = set.contains?('1')

      expect(expected).to eq(false)
    end

    it 'returns true for a set with one element when comparing with the same element' do
      set = Set.new

      set.add('1')

      expected = set.contains?('1')

      expect(expected).to eq(true)
    end

    it 'returns false for a set with one element when comparing with a different element' do
      set = Set.new

      set.add('1')

      expected = set.contains?('2')

      expect(expected).to eq(false)
    end
  end
end
