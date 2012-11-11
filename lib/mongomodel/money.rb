require 'money'

class Money
  def to_mongo
    [cents, currency_as_string]
  end
  
  def self.from_mongo(value)
    new(value[0], value[1]) 
  rescue 
    new(value.to_i)
  end
  
  def self.cast(amount)
    parse(amount) unless amount.blank?
  end
  
  def blank?
    zero?
  end
end