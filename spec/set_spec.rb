require 'rspec'
require_relative '../lib/set'
RSpec.describe Set do
  describe '#empty?' do
    it 'returns true for an empty set' do
      set = Set.new
      expect(set.empty?).to eq(true)
    end
  end
end
