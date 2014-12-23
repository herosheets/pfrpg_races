module PfrpgRaces
  class StatBonus
    include ::PfrpgUtility::Affectable
    attr_reader :stat, :bonus
    def initialize(stat, bonus)
      @stat = stat
      @bonus = bonus
    end

    def effects
      "attribute:#{stat.downcase}:#{bonus}"
    end
  end
end