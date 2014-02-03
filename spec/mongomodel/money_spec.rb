# -*- encoding: utf-8 -*-
require 'rubygems'
require 'bundler/setup'
require 'minitest/autorun'
require 'minitest/spec'

require "mongomodel/money"
require "active_support/all"

describe Money do
  Money.default_currency   = Money::Currency.new("EUR")
  Money.assume_from_symbol = true
  
  it "converts to mongo representation" do
    Money.new(123).to_mongo.must_equal  [123, "EUR"]
  end

  it "loads from mongo representation" do
    Money.from_mongo([456, "AUD"]).must_equal  Money.new(456, "AUD")
  end

  it "casts to Money" do
    Money.cast("USD 7.89").must_equal  Money.new(789, 'USD')
    Money.cast("99.9").must_equal  Money.new(9990, 'EUR')
    Money.cast(1234).must_equal  Money.new(123400, 'EUR')
    Money.cast("").must_equal nil
    Money.cast(Money.new(123)).must_equal  Money.new(123, 'EUR')
  end

  it "should respond to blank?" do
    Money.new(0).blank?.must_equal true
  end
  
  it "should respond to present?" do
    Money.new(0).present?.must_equal false
  end
end
