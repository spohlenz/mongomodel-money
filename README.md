# MongoModel Money support

MongoModel support for the [RubyMoney](https://github.com/RubyMoney/money) gem.

## Installation

Add this line to your application's Gemfile:

    gem 'mongomodel-money'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongomodel-money

## Usage

    class Product
      property :price, Money
    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
