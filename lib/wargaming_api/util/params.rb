module WargamingApi::Util::Params
  def prepare_params(params = {})
    {
      application_id: WargamingApi::Config::APPLICATION_ID,
      language: WargamingApi::Config::LANGUAGE
    }.merge(params)
  end
end