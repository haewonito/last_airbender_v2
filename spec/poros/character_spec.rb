require "rails_helper"

RSpec.describe Character do
  it 'has attributes' do

    character = Character.new(character_data_for_test[0])

    expect(character.affiliation).to eq("Fire Nation Navy")
    expect(character.allies).to include("Ozai")
    expect(character.enemies).to eq(["Earth Kingdom"])
    expect(character.name).to eq("Chan (Fire Nation admiral)")
  end
  #test somewhere to make sure allies and enemies come out "None" if empty
end
