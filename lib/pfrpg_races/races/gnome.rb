class PfrpgRaces::Race::Gnome < PfrpgRaces::Race

  def name
    "Gnome"
  end

  def description
    "Gnomes are physically weak but surprisingly hardy, and their attitude makes them naturally agreeable. They gain +2 Constitution, +2 Charisma, and –2 Strength."
  end

  def source
    "PFRPG"
  end

  def attribute_bonuses
    [
        PfrpgRaces::StatBonus.new('CON',2),
        PfrpgRaces::StatBonus.new('CHA',2),
        PfrpgRaces::StatBonus.new('STR',-2),
    ]
  end

  def bonus_choices
    []
  end

  def languages
    ["Common", "Gnome", "Sylvan"]
  end

  def speed
    20
  end

  def int_languages
    ["Draconic", "Dwarven", "Elven", "Giant", "Goblin", "Orc"]
  end

  def size
    "SMALL"
  end

  def choose_ability_bonus?
    false
  end

  def weapon_familiarity
    [ ]
  end

  def martial_weapons
    "gnome"
  end

  def traits
    [
      PfrpgRaces::RacialTrait.new( :name => "Low-Light Vision",
                       :description => "See 2x as far in dim light"
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Defensive Training",
                       :description => "+4 dodge AC vs giant monsters"
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Hatred",
                       :description => "+1 ATK Bonus vs reptilian humanoids and goblinoid subtypes"
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Illusion Resistance",
                       :description => "+2 save vs illusion spells and effects"
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Obsessive",
                       :description => "+2 to Craft or Profession skill of your choice"
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Gnome Magic",
                       :description => "+1 to DC of any saving throws against illusions they cast, \n
                                        with >= 11 Charisma, gain spell-like abilities once per day:\n
                                        \tdancing lights,\n
                                        \tghost sound,\n
                                        \tprestidigitation,\n
                                        \tspeak with animals\n
                                        The DC for these spells is 10 + spell level + CHA mod",
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Keen Senses",
                       :description => "+2 Perception",
                       :effects =>
                        [
                          PfrpgUtility::Effect.new("skill", "perception", 2)
                        ]
                     )
    ]
  end
end
