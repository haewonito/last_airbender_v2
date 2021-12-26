require 'rails_helper'

RSpec.describe "Last Airbender API Service" do
  describe "happy path" do
    it 'can get member information' do
      path = "/api/v1/characters?"
      params = {affiliation: "Fire Nation", perPage: 25, page: 1}
      response = AirbenderService.get_api(path, params)

      expect(response).to be_an Array
      expect(response[0]).to be_a Hash
      expect(response[0]).to have_key(:name)
      expect(response[0]).to have_key(:affiliation)
      expect(response[0]).to have_key(:allies)
      expect(response[0]).to have_key(:enemies)

    end
  end
end
