require 'active_support/all'

module WargamingApi
  mattr_accessor :application_id
  @@application_id = '171745d21f7f98fd8878771da1000a31'
  
  mattr_accessor :language
  @@language = 'ru'

  def self.setup
    yield self
  end
end

require 'uri'
require 'net/http'

require 'wargaming_api/concern'
require 'wargaming_api/error'
require 'wargaming_api/util'
require 'wargaming_api/node'

require 'wargaming_api/base'
require 'wargaming_api/wot'
