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

    $ user_info = WargamingApi::Wot::Account::Info.fetch(account_id: 16467530).first
    $ user_info.nickname # => 'externix'
    $ user_info.statistics.all.battles # => 14999
    $ user_info.global_rating # => 8628
    
    $ member_info = WargamingApi::Wgn::Clans::Membersinfo.fetch(account_id: 16467530).first
    $ member_info.clan.clan_id # => nil

## Contributing

1. Fork it ( https://github.com/DmitryDrobotov/wargaming_api_ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
