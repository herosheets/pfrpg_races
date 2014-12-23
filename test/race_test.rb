require 'minitest/autorun'
require 'pfrpg_races'

class RaceTest < Minitest::Test

  def test_trivial_race
    assert PfrpgRaces::Race.fetch('Elf')
    assert PfrpgRaces::Race.fetch('Dwarf')
    assert PfrpgRaces::Race.fetch('Halfling')
    assert PfrpgRaces::Race.fetch('Human')
    assert PfrpgRaces::Race.fetch('Gnome')
    assert PfrpgRaces::Race.fetch('HalfElf')
    assert PfrpgRaces::Race.fetch('HalfOrf')
  end

end