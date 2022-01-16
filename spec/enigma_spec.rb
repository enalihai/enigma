require './spec/spec_helper.rb'
require 'pry'
require './lib/enigma'

RSpec.describe Enigma  do
  describe '#setup' do
    it 'exists' do
    enigma_trial = Enigma.new

    expect(enigma_trial).to be_a(Enigma)
    end
  end
end
