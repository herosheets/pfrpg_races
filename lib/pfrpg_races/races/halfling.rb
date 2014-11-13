class PfrpgRaces::Race::Halfling < PfrpgRaces::Race

  def name
    "Halfling"
  end

  def description
    "Halflings are nimble and strong-willed, but their small stature makes them weaker than other races. They gain +2 Dexterity, +2 Charisma, and –2 Strength."
  end

  def source
    "PFRPG"
  end

  def attribute_bonuses
    [   { 'DEX' => 2 },
        { 'CHA' => 2 },
        { 'STR' => -2 }
    ]
  end

  def bonus_choices
    []
  end

  def languages
    ["Common", "Halfling"]
  end

  def speed
    20
  end

  def int_languages
    ["Dwarven", "Elven", "Gnome", "Goblin"]
  end

  def size
    "SMALL"
  end

  def choose_ability_bonus?
    false
  end

  def weapon_familiarity
    [ "Sling" ]
  end

  def martial_weapons
    "halfling"
  end

  def traits
    [
      RacialTrait.new( :name => "Fearless",
                       :description => "+2 racial bonus save vs fear (This stacks with Luck)"
                     ),
      RacialTrait.new( :name => "Halfling Luck",
                       :description => "+1 racial bonus to all saving throws",
                       :effects =>
                        [
                          PfrpgCore::Effect.new("racial", "fort_save", 1),
                          PfrpgCore::Effect.new("racial", "will_save", 1),
                          PfrpgCore::Effect.new("racial", "ref_save", 1)
                        ]
                     ),
      RacialTrait.new( :name => "Sure Footed",
                       :description => "+2 racial bonus on Acrobatic & Climb skill checks",
                       :effects =>
                        [
                          PfrpgCore::Effect.new("skill", "climb", 2),
                          PfrpgCore::Effect.new("skill", "acrobatics", 2)
                        ]
                     ),
      RacialTrait.new( :name => "Keen Senses",
                       :description => "+2 Perception",
                       :effects =>
                        [
                          PfrpgCore::Effect.new("skill", "perception", 2)
                        ]
                     )
    ]
  end
end
