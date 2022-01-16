require './spec/spec_helper.rb'
require 'pry'
require './lib/enigma'

RSpec.describe Enigma  do
  describe '#setup' do
    it 'exists' do
    enigma = Enigma.new

    expect(enigma).to be_a(Enigma)
    end

    # it 'can take 3 arguments' do
    #
    # enigma = Enigma.new
  end
end
