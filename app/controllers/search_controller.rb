class SearchController < ApplicationController
  def index
    @nation = params[:nation].gsub("_", " ")
    @characters = AirbenderFacade.all_affiliated_members(@nation)
    @total_number = @characters.count
    @first_25_char = @characters.first(25)
  end
end
