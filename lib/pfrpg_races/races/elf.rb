class PfrpgRaces::Race::Elf < PfrpgRaces::Race

  def name
    "Elf"
  end

  def description
    "Elves are nimble, both in body and mind, but their form is frail. They gain +2 Dexterity, +2 Intelligence, and –2 Constitution."
  end

  def source
    "PFRPG"
  end

  def attribute_bonuses
    [
      { 'DEX' => 2 },
      { 'INT' => 2 },
      { 'CON' => -2 }
    ]
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
    ["Celestial", "Draconic", "Gnoll", "Gnome", "Goblin", "Orc", "Sylvan"]
  end

  def size
    "MEDIUM"
  end

  def choose_ability_bonus?
    false
  end

  def weapon_familiarity
    [ "Longbow", "Composite Longbow", "Longsword", "Rapier", "Shortbow", "Composite Shortbow"]
  end

  def martial_weapons
    "elf"
  end

  def traits
    [
      PfrpgRaces::RacialTrait.new( :name => "Low-Light Vision",
                       :description => "See 2x as far in dim light"
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Elven Immunities",
                       :description => "Immune to Magic Sleep, +2 save vs enchantments"
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Elven Magic",
                       :description => "+2 racial bonus on caster level checks for spell resistance,\n
                                        +2 racial bonus on Spellcraft to identify magic items"
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
