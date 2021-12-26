require "rails_helper"

RSpec.describe "welcome index page", type: :feature do
  describe "as a visitor" do
    before(:each) do
      visit root_path
      select 'Fire Nation', from: :nation
      click_on 'Search For Members'
    end

    it "takes me to a search page" do
      expect(current_path).to eq("/search")
    end

    it "shows me the total number of people in the Fire Nation" do  #should be close to 100
      expect(page).to have_content("Total number of characters belonging to the Fire Nation is 97")
      expect(page).to have_content('Name: ', count: 25)
    end

    it "shows me a list with detailed information for the first 25 members" do
      within("#char-Bujing") do
        expect(page).to have_content("Name: Bujing")
        expect(page).to have_content('Allies: ["Ozai"]')
        expect(page).to have_content('Enemies: ["Zuko"]')
        expect(page).to have_content("Affiliations: Fire Nation")
      end
    end
#there's probably a better way to test this, but.
    it "shows 'None' if the character does not have an ally or an enemy" do
      expect(page).to have_content("None")
      expect(page).to_not have_content("[]")
    end
  end
end


#
#
# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has
