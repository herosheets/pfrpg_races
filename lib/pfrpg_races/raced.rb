module PfrpgRaces
  module Raced
    def get_race
      Race.fetch(self.race)
    end

    def racial_size
      r = race
      if r
        self.race.size
      else
        nil
      end
    end

    def get_racial_stat_bonuses
      return [] if self.race == nil
      bonuses = self.race.attribute_bonuses
      if bonuses.nil? || bonuses.empty?
        bonuses = self.racial_stat_bonuses
      end
      return bonuses
    end
  end
end
