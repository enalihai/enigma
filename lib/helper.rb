require 'pry'
require 'date'

module Helper
  # attr_reader :key_master, :date_generator

  def date_generator(date)
    date = Date.today.to_s
  end

  def key_master(key)
    key = rand(99999).to_s
  end

  # def shift_generator
  # end
  #
  # def offset_generator
  # end
end
