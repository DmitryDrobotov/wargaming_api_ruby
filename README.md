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
```ruby
WargamingApi.setup do |config|
  config.application_id = 'application-id-from-wargaming.net/developers'
  config.language = 'ru'
end
```
## Usage
```ruby
user_info = WargamingApi::Wot::Account::Info.fetch(account_id: 16467530).first
user_info.nickname # => 'externix'
user_info.statistics.all.battles # => 14999
user_info.global_rating # => 8628
```    
## Available API classes

```ruby
WargamingApi::Wot::Account
WargamingApi::Wot::Account
WargamingApi::Wot::Account
WargamingApi::Wot::Account
WargamingApi::Wot::Auth
WargamingApi::Wot::Auth
WargamingApi::Wot::Auth
WargamingApi::Wot::Stronghold
WargamingApi::Wot::Stronghold
WargamingApi::Wot::Stronghold
WargamingApi::Wot::Stronghold
WargamingApi::Wot::Globalmap
WargamingApi::Wot::Globalmap
WargamingApi::Wot::Globalmap
WargamingApi::Wot::Globalmap
WargamingApi::Wot::Globalmap
WargamingApi::Wot::Globalmap
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Encyclopedia
WargamingApi::Wot::Ratings
WargamingApi::Wot::Ratings
WargamingApi::Wot::Ratings
WargamingApi::Wot::Ratings
WargamingApi::Wot::Ratings
WargamingApi::Wot::Clanratings
WargamingApi::Wot::Clanratings
WargamingApi::Wot::Clanratings
WargamingApi::Wot::Clanratings
WargamingApi::Wot::Clanratings
WargamingApi::Wot::Tanks
WargamingApi::Wot::Tanks
WargamingApi::Wot::Regularteams
WargamingApi::Wot::Regularteams

WargamingApi::Wotb::Account
WargamingApi::Wotb::Account
WargamingApi::Wotb::Account
WargamingApi::Wotb::Encyclopedia
WargamingApi::Wotb::Encyclopedia
WargamingApi::Wotb::Encyclopedia
WargamingApi::Wotb::Encyclopedia
WargamingApi::Wotb::Encyclopedia
WargamingApi::Wotb::Tanks
WargamingApi::Wotb::Tanks

WargamingApi::Wowp::Account
WargamingApi::Wowp::Account
WargamingApi::Wowp::Account
WargamingApi::Wowp::Encyclopedia
WargamingApi::Wowp::Encyclopedia
WargamingApi::Wowp::Encyclopedia
WargamingApi::Wowp::Encyclopedia
WargamingApi::Wowp::Encyclopedia
WargamingApi::Wowp::Encyclopedia
WargamingApi::Wowp::Encyclopedia
WargamingApi::Wowp::Ratings
WargamingApi::Wowp::Ratings
WargamingApi::Wowp::Ratings
WargamingApi::Wowp::Ratings
WargamingApi::Wowp::Ratings

WargamingApi::Wows::Account
WargamingApi::Wows::Account
WargamingApi::Wows::Account
WargamingApi::Wows::Encyclopedia
WargamingApi::Wows::Encyclopedia
WargamingApi::Wows::Encyclopedia
WargamingApi::Wows::Encyclopedia
WargamingApi::Wows::Encyclopedia
WargamingApi::Wows::Encyclopedia
WargamingApi::Wows::Encyclopedia
WargamingApi::Wows::Encyclopedia
WargamingApi::Wows::Ships

WargamingApi::Wgn::Account
WargamingApi::Wgn::Account
WargamingApi::Wgn::Wargag
WargamingApi::Wgn::Wargag
WargamingApi::Wgn::Wargag
WargamingApi::Wgn::Wargag
WargamingApi::Wgn::Wargag
WargamingApi::Wgn::Wargag
WargamingApi::Wgn::Wargag
WargamingApi::Wgn::Wargag
WargamingApi::Wgn::League
WargamingApi::Wgn::League
WargamingApi::Wgn::League
WargamingApi::Wgn::League
WargamingApi::Wgn::League
WargamingApi::Wgn::League
WargamingApi::Wgn::League
WargamingApi::Wgn::League
WargamingApi::Wgn::League
WargamingApi::Wgn::Clans
WargamingApi::Wgn::Clans
WargamingApi::Wgn::Clans
WargamingApi::Wgn::Clans
WargamingApi::Wgn::Clans
WargamingApi::Wgn::Wgtv
WargamingApi::Wgn::Wgtv
WargamingApi::Wgn::Wgtv
WargamingApi::Wgn::Servers
```

## Contributing

1. Fork it ( https://github.com/DmitryDrobotov/wargaming_api_ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
