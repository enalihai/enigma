require './spec/spec_helper.rb'
require 'pry'
require './lib/enigma'
require './lib/encrypt'

RSpec.describe Encrypt do
  describe '#encryption' do
    it "exists" do
    encrypt = Encrypt.new({message: "Hello World", key: 55424, date: 150122})

    expect(encrypt).to be_a(Encrypt)
    end

    it 'can take 3 arguments' do
    encrypt = Encrypt.new("Hello World", 55424, 150122)

    expect(encrypt.message).to eq("Hello World")
    expect(encrypt.key).to be(55424)
    expect(encrypt.date).to be(150122)
    end
  end
end
