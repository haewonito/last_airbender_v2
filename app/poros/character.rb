class Character
  attr_reader :name, :photo_url, :affiliation

  def initialize(data)
    @name = data[:name]
    @photo_url = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
  end

  def allies
    if @allies == []
      "None"
    else
      @allies
    end
  end

  def enemies
    if @enemies == []
      "None"
    else
      @enemies
    end
  end

end
