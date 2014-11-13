class PfrpgRaces::Race::Human < PfrpgRaces::Race

  def name
    "Human"
  end

  def description
    "Human characters gain a +2 racial bonus to one ability score of their choice at creation to represent their varied nature. Humans select one extra feat at 1st level, and gain an additional skill rank at first level and one additional rank whenever they gain a level."
  end

  def source
    "PFRPG"
  end

  def attribute_bonuses
    nil
  end

  def bonus_choices
    [ChooseFeat.new]
  end

  def speed
    30
  end

  def languages
    ["Common"]
  end

  def int_languages
    PfrpgTables::Tables::Languages.int_languages
  end

  def size
    "MEDIUM"
  end

  def choose_ability_bonus?
    true
  end

  def weapon_familiarity
    []
  end

  def traits
    []
  end
end
