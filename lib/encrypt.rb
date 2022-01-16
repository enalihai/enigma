class Encrypt
  attr_reader :message, :key, :date
  def initialize(message, key = nil, date = nil)
    @message = message
    @key = key
    @date = date
  end
end
