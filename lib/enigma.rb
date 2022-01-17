require 'date'
require './lib/helper.rb'
require 'pry'

class Enigma
  include Helper
  attr_reader :character_set

  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def encrypt(message, key, date)
    # takes a message String as an argument. key/date are optional
    # @enigma.each do |encryption|
    # end
    message = message
    key = key_master(key)
    date = date_generator(date)
  end

  # def decrypt
  #  takes a ciphertext String and the Key used for encryption as arguments.
  # end
end
