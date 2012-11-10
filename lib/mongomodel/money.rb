require 'money'

class Money
  def to_mongo
    cents
  end
  
  def self.from_mongo(cents)
    new(cents.to_i)
  end
  
  def self.cast(dollars)
    parse(dollars) unless dollars.blank?
  end
  
  def blank?
    zero?
  end
end
