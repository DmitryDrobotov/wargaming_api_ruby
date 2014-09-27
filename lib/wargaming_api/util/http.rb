module WargamingApi::Util::Http
  def fetch_data(uri)
    request = Net::HTTP::Get.new(uri)
    response = Net::HTTP.start(uri.host, uri.port) { |http| http.request(request) }

    data = ActiveSupport::JSON.decode(response.body)
    raise WargamingApi::Error::ResponseError.new(data) if !'ok'.eql?(data['status'])

    data
  end
end