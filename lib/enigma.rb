require 'date'
require './lib/helper.rb'
require 'pry'

class Enigma
  include Helper
  attr_reader :character_set

  def initialize
    @character_set = ("a".."z").to_a << " "
  end

  def encrypt(message, key = key_master, date = Date.today)
    # takes a message String as an argument. key/date are optional
     offset_generator
     # shift_generator
     # key
     # offset = date.today
  end

  # def decrypt
  #  takes a ciphertext String and the Key used for encryption as arguments.
  # end
end
