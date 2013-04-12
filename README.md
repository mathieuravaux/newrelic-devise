# newrelic-devise

Wraps Devise potentially time-consuming methods so they appear in NewRelic. 

## Installation

Add this line to your application's Gemfile:

    gem 'newrelic-devise'

Then execute:

    $ bundle

And then add the `:instrumentable` aspect to your user model:

    class User
      devise :database_authenticatable, :confirmable, :instrumentable
    end

It should be the last of the aspecs list.

## Usage

Head to NewRelic dashboard and relax

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
