module WargamingApi::Util::Uri
  def api_uri(params)
    host = 'http://api.worldoftanks.ru/'
    path = self.class.to_s.underscore.gsub('wargaming_api/', '').gsub('_', '')

    URI([host, path, '/?', params.to_param].join)
  end
end