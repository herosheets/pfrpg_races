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
    [
        PfrpgRaces::StatBonus.new('DEX',2),
        PfrpgRaces::StatBonus.new('CHA',2),
        PfrpgRaces::StatBonus.new('STR',-2)
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
      PfrpgRaces::RacialTrait.new( :name => "Fearless",
                       :description => "+2 racial bonus save vs fear (This stacks with Luck)"
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Halfling Luck",
                       :description => "+1 racial bonus to all saving throws",
                       :effects =>
                        [
                          PfrpgUtility::Effect.new("racial", "fort_save", 1),
                          PfrpgUtility::Effect.new("racial", "will_save", 1),
                          PfrpgUtility::Effect.new("racial", "ref_save", 1)
                        ]
                     ),
      PfrpgRaces::RacialTrait.new( :name => "Sure Footed",
                       :description => "+2 racial bonus on Acrobatic & Climb skill checks",
                       :effects =>
                        [
                          PfrpgUtility::Effect.new("skill", "climb", 2),
                          PfrpgUtility::Effect.new("skill", "acrobatics", 2)
                        ]
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
