class WargamingApi::Base < WargamingApi::Node
  include WargamingApi::Util::Uri
  include WargamingApi::Util::Params
  include WargamingApi::Util::Http

  attr_reader :params
  attr_reader :uri
  attr_reader :json

  def initialize(params = {})
    @params = prepare_params(params)
    @uri = api_uri(@params)
    @json = fetch_data(@uri).with_indifferent_access
    super(@json[:data])
  end

  def self.fetch(params = {})
    self.new(params)
  end

end