require 'pry'
require 'date'

module Helper
  # def date_generator(date = Date.today)
  #   date = Date.today
  # end.to_s

  def key_master
    key = rand(99999).to_s
  end

  def shift_generator(key = key_master)
    # key is coming in as a number, so turn key into an array of numbers. will need accumulator as an array. for each element of your accumulator ie) 0,3,4, shovel 0/1 1/2 2/3 3/4. return the accumulator.
    # encrypt hash with string of ABCD = 
  end
  # create 2 new methods, returning hash of encrypt and the other of decrypt hash.

  def offset_generator(date = Date.today)
    if date.class == Date
      formatted_date = date.strftime("%d,%m,%y").gsub(/,/,'')
      (formatted_date.to_i ** 2).to_s.split('').last(4)
    else
      (date.to_i ** 2).to_s.split('').last(4)
    end.join
  end
end
