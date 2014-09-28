module WargamingApi::Util::Params
  def prepare_params(params = {})
    {
      application_id: WargamingApi.application_id,
      language: WargamingApi.language
    }.merge(params)
  end
end