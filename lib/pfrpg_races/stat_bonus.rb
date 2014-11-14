class PfrpgRaces::StatBonus

  attr_reader :stat, :bonus
  def initialize(stat, bonus)
    @stat = stat
    @bonus = bonus
  end

end