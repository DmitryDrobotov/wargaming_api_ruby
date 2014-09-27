class WargamingApi::Error::ResponseError < StandardError
  attr_reader :response

  def initialize(response)
    @response = response
    super(response['error']['message'])
  end
end