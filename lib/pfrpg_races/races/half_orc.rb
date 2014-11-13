class PfrpgRaces::Race::HalfOrc < PfrpgRaces::Race

  def name
    "HalfOrc"
  end

  def description
    "Half-orcs average around 6 feet tall, with powerful builds and greenish or grayish skin. Their canine teeth often grow long enough to protrude from their mouths, and these “tusks,” combined with heavy brows and slightly pointed ears, give them their notoriously bestial appearance. While half-orcs may be impressive, few ever describe them as beautiful. Despite these obvious orc traits, half-orcs are as varied as their human parents."
  end

  def source
    "PFRPG"
  end

  def attribute_bonuses
    nil
  end

  def bonus_choices
    []
  end

  def languages
    ["Common", "Orc"]
  end

  def speed
    30
  end

  def int_languages
    ["Abyssal", "Draconic", "Giant", "Gnoll", "Goblin"]
  end

  def size
    "MEDIUM"
  end

  def choose_ability_bonus?
    true
  end

  def weapon_familiarity
    [ "Greataxe", 'Falchion']
  end

  def martial_weapons
    "orc"
  end

  def traits
    [
      RacialTrait.new( :name => "Darkvision",
                       :description => "See in the dark up to 60 feet"
                     ),
      RacialTrait.new( :name => "Intimidating",
                       :description => "+2 racial bonus to intimidate skill checks",
                       :effects =>
                        [
                          PfrpgCore::Effect.new("skill", "intimidate", 2)
                        ]
                     ),
      RacialTrait.new( :name => "Orc Blood",
                       :description => "Count as both Orc and Human"
                     ),
      RacialTrait.new( :name => "Orc Ferocity",
                       :description => "1/day, if you are brought below 0 HP but not killed,\n
                                        you can fight on for one round as if disabled. You begin\n
                                        dying and fall unconscious if are not brought above 0 HP."
                     )
    ]
  end
end
