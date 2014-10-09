# WargamingApiRuby

Wargaming API gem

## Installation

Add this line to your application's Gemfile:

    gem 'wargaming_api_ruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wargaming_api_ruby

## Configuring

Add to your initializer:

    WargamingApi.setup do |config|
      config.application_id = 'application-id-from-wargaming.net/developers'
      config.language = 'ru'
    end

## Usage

    $ info = WargamingApi::Wot::Account::Info.fetch(account_id: 123)
    $ info.first.nickname # => "bla-bla-bla"

## Contributing

1. Fork it ( https://github.com/DmitryDrobotov/wargaming_api_ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
