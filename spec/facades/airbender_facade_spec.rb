require 'rails_helper'

RSpec.describe AirbenderFacade do
  it 'gets all of characters affiliated to a nation' do

    members = AirbenderFacade.all_affiliated_members("Fire Nation")

    expect(members.first).to be_a Character
    expect(members.first.name).to include("Chan")
    expect(members.first.allies).to eq(["Ozai"])
    expect(members.first.enemies).to eq(["Earth Kingdom"])
    expect(members.first.photo_url).to eq(nil)
  end
end
