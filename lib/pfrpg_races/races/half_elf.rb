class PfrpgRaces::Race::HalfElf < PfrpgRaces::Race

  def name
    "HalfElf"
  end

  def description
    "Half-elf characters gain a +2 bonus to one ability score of their choice at creation to represent their varied nature."
  end

  def source
    "PFRPG"
  end

  def attribute_bonuses
    nil
  end

  def bonus_feat
    [ "Skill Focus" ]
  end

  def bonus_choices
    []
  end

  def languages
    ["Common", "Elven"]
  end

  def speed
    30
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
    [
      PfrpgRaces::RacialTrait.new( :name => "Low-Light Vision",
                       :description => "See 2x as far in dim light"
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Elven Immunities",
                       :description => "Immune to Magic Sleep, +2 save vs enchantments"
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Elf Blood",
                       :description => "Count as both Elves and Humans for effects"
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Multitalented",
                       :description => "You have two, instead of one, favored class"
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Keen Senses",
                       :description => "+2 Perception",
                       :effects =>
                        [
                          PfrpgCore::Effect.new("skill", "perception", 2)
                        ]
                     )
    ]
  end
end
