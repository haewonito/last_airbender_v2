class AirbenderFacade
  class << self

    def all_affiliated_members(nation)
      path = "/api/v1/characters?"
      params = {affiliation: nation, perPage: 25, page: 1}
      total_data = []

      response = ["whatever"]

      while response.count != 0
        response = AirbenderService.get_api(path, params)
        total_data += response
        params[:page] += 1
      end

      total_data = total_data.flatten

      total_data.map do |character_data|
        Character.new(character_data)
      end
    end

  end
end
