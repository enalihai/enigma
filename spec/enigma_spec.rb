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

    xit 'can read keys and dates' do
      enigma = Enigma.new
      enigma.encrypt("hello world", "02715", "040895")

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

    it 'is optional to include key and date' do
      enigma = Enigma.new
      enigma.encrypt("hello world")

      expect(enigma.key_master).to be_a(String)
      expect(enigma.key_master.length).to eq(5)
      expect(enigma).to be_a(Enigma)
      # expect(enigma.date_generator.length).to eq(4)
    end

    it 'can create an offset based on date' do
      enigma = Enigma.new
      enigma.encrypt("hello world", "02715", "040895")

      expect(enigma.offset_generator("040895")).to eq("1025")
    end

    it 'can generate a formatted date in offset_generator' do
      enigma = Enigma.new
      enigma.encrypt("hello world", "02715", "040895")

      expect(enigma.offset_generator.length).to eq(4)
    end
  end
end
