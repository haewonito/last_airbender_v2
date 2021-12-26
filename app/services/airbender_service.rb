class AirbenderService
  class << self

    def get_api(path, params = {})
      response = conn.get(path) do |f|
        f.params = params
      end

      parse_data(response)
    end


    private
    def conn
      Faraday.new("https://last-airbender-api.herokuapp.com")
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end

  end
end
