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
WargamingApi::Wot::Account::List
WargamingApi::Wot::Account::Info
WargamingApi::Wot::Account::Tanks
WargamingApi::Wot::Account::Achievements
WargamingApi::Wot::Auth::Login
WargamingApi::Wot::Auth::Prolongate
WargamingApi::Wot::Auth::Logout
WargamingApi::Wot::Stronghold::Info
WargamingApi::Wot::Stronghold::Buildings
WargamingApi::Wot::Stronghold::Accountstats
WargamingApi::Wot::Stronghold::Plannedbattles
WargamingApi::Wot::Globalmap::Claninfo
WargamingApi::Wot::Globalmap::Info
WargamingApi::Wot::Globalmap::Fronts
WargamingApi::Wot::Globalmap::Clanbattles
WargamingApi::Wot::Globalmap::Provinces
WargamingApi::Wot::Globalmap::Clanprovinces
WargamingApi::Wot::Encyclopedia::Tanks
WargamingApi::Wot::Encyclopedia::Tankinfo
WargamingApi::Wot::Encyclopedia::Vehicles
WargamingApi::Wot::Encyclopedia::Vehicleprofile
WargamingApi::Wot::Encyclopedia::Tankengines
WargamingApi::Wot::Encyclopedia::Tankturrets
WargamingApi::Wot::Encyclopedia::Tankradios
WargamingApi::Wot::Encyclopedia::Tankchassis
WargamingApi::Wot::Encyclopedia::Tankguns
WargamingApi::Wot::Encyclopedia::Achievements
WargamingApi::Wot::Encyclopedia::Info
WargamingApi::Wot::Encyclopedia::Arenas
WargamingApi::Wot::Encyclopedia::Personalmissions
WargamingApi::Wot::Encyclopedia::Provisions
WargamingApi::Wot::Encyclopedia::Boosters
WargamingApi::Wot::Ratings::Types
WargamingApi::Wot::Ratings::Dates
WargamingApi::Wot::Ratings::Accounts
WargamingApi::Wot::Ratings::Neighbors
WargamingApi::Wot::Ratings::Top
WargamingApi::Wot::Clanratings::Types
WargamingApi::Wot::Clanratings::Dates
WargamingApi::Wot::Clanratings::Clans
WargamingApi::Wot::Clanratings::Neighbors
WargamingApi::Wot::Clanratings::Top
WargamingApi::Wot::Tanks::Stats
WargamingApi::Wot::Tanks::Achievements
WargamingApi::Wot::Regularteams::List
WargamingApi::Wot::Regularteams::Info

WargamingApi::Wotb::Account::List
WargamingApi::Wotb::Account::Info
WargamingApi::Wotb::Account::Achievements
WargamingApi::Wotb::Encyclopedia::Vehicles
WargamingApi::Wotb::Encyclopedia::Vehicleprofiles
WargamingApi::Wotb::Encyclopedia::Modules
WargamingApi::Wotb::Encyclopedia::Provisions
WargamingApi::Wotb::Encyclopedia::Info
WargamingApi::Wotb::Tanks::Stats
WargamingApi::Wotb::Tanks::Achievements

WargamingApi::Wowp::Account::List
WargamingApi::Wowp::Account::Info
WargamingApi::Wowp::Account::Planes
WargamingApi::Wowp::Encyclopedia::Planes
WargamingApi::Wowp::Encyclopedia::Planeinfo
WargamingApi::Wowp::Encyclopedia::Planemodules
WargamingApi::Wowp::Encyclopedia::Planeupgrades
WargamingApi::Wowp::Encyclopedia::Planespecification
WargamingApi::Wowp::Encyclopedia::Achievements
WargamingApi::Wowp::Encyclopedia::Info
WargamingApi::Wowp::Ratings::Types
WargamingApi::Wowp::Ratings::Accounts
WargamingApi::Wowp::Ratings::Neighbors
WargamingApi::Wowp::Ratings::Top
WargamingApi::Wowp::Ratings::Dates

WargamingApi::Wows::Account::List
WargamingApi::Wows::Account::Info
WargamingApi::Wows::Account::Achievements
WargamingApi::Wows::Encyclopedia::Info
WargamingApi::Wows::Encyclopedia::Ships
WargamingApi::Wows::Encyclopedia::Achievements
WargamingApi::Wows::Encyclopedia::Shipprofile
WargamingApi::Wows::Encyclopedia::Modules
WargamingApi::Wows::Encyclopedia::Exterior
WargamingApi::Wows::Encyclopedia::Upgrades
WargamingApi::Wows::Encyclopedia::Accountlevels
WargamingApi::Wows::Ships::Stats

WargamingApi::Wgn::Account::List
WargamingApi::Wgn::Account::Info
WargamingApi::Wgn::Wargag::Content
WargamingApi::Wgn::Wargag::Search
WargamingApi::Wgn::Wargag::Comments
WargamingApi::Wgn::Wargag::Categories
WargamingApi::Wgn::Wargag::Tags
WargamingApi::Wgn::Wargag::Rate
WargamingApi::Wgn::Wargag::Newcomment
WargamingApi::Wgn::Wargag::Deletecomment
WargamingApi::Wgn::League::Leagues
WargamingApi::Wgn::League::Tournaments
WargamingApi::Wgn::League::Grid
WargamingApi::Wgn::League::Matches
WargamingApi::Wgn::League::Teams
WargamingApi::Wgn::League::Teaminfo
WargamingApi::Wgn::League::Halloffame
WargamingApi::Wgn::League::Players
WargamingApi::Wgn::League::Playerinfo
WargamingApi::Wgn::Clans::List
WargamingApi::Wgn::Clans::Info
WargamingApi::Wgn::Clans::Membersinfo
WargamingApi::Wgn::Clans::Glossary
WargamingApi::Wgn::Clans::Messageboard
WargamingApi::Wgn::Wgtv::Tags
WargamingApi::Wgn::Wgtv::Videos
WargamingApi::Wgn::Wgtv::Vehicles
WargamingApi::Wgn::Servers::Info
```

## Contributing

1. Fork it ( https://github.com/DmitryDrobotov/wargaming_api_ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
