require './spec/spec_helper.rb'
require 'pry'
require './lib/enigma'
require './lib/encrypt'

RSpec.describe Encrypt do
  describe '#encryption' do
    it "exists" do
    encrypt = Encrypt.new("Hello World", 55424, 150122)

    expect(encrypt).to be_a(Encrypt)
    end
  end
end
