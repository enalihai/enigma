require './spec/spec_helper.rb'
require 'pry'
require './lib/enigma'
require 'date'
require './lib/helper'

RSpec.describe Enigma  do
  describe '#setup' do
    it 'exists' do
    enigma = Enigma.new

    expect(enigma).to be_a(Enigma)
    end

    it 'can create attribute character_set' do
      enigma = Enigma.new

      expect(enigma.character_set).to eq(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", " "])
    end

    it 'can read keys' do
      enigma = Enigma.new
      enigma.encrypt("hello world", "02715", "040895")

      expect(enigma.key).to eq("02715")
      expect(enigma.date).to be("040895")
    end
    xit 'can take 3 arguments and encrypt them' do
      enigma = Enigma.new
      enigma.encrypt("hello world", "02715", "040895")

      expect(enigma.encrypt("hello world", "02715", "040895")).to eq({
        encryption: "keder ohulw",
        key: "02715",
        date: "040895"
          })
    end

    xit 'is optional to include key and date' do
      enigma = Enigma.new
      enigma.encrypt("hello world")

      expect(enigma.encrypt("hello world")).to be_a(Enigma)
    end
  end
end
