require 'minitest/autorun'
require 'pfrpg_races'

class RaceTest < Minitest::Test

  def test_trivial_race
    assert PfrpgRaces::Race.fetch('Elf')
  end

end