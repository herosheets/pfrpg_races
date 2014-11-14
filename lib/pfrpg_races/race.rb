module PfrpgRaces
  class Race

    def self.fetch(race_str)
      begin
        race_str = "PfrpgRaces::Race::#{race_str}" unless race_str['PfrpgRaces::Race']
        return Object::const_get(race_str).new
      rescue Exception
        return nil
      end
    end

    def self.race_list
      [
        PfrpgRaces::Race::Dwarf.new,
        PfrpgRaces::Race::Human.new,
        PfrpgRaces::Race::Gnome.new,
        PfrpgRaces::Race::HalfElf.new,
        PfrpgRaces::Race::Elf.new,
        PfrpgRaces::Race::HalfOrc.new,
        PfrpgRaces::Race::Halfling.new
      ]
    end

    def size_modifier
      PfrpgTables::Tables::Size.get_size_modifier(size)
    end

    def bonus_feats
      []
    end

    def attributes
      if attribute_bonuses == nil
        return "You will later get to choose a +2 bonus to one ability score of your choice"
      else
        str = ""
        attribute_bonuses.each do |a|
          str += "#{a.to_s}, "
        end
        return str
      end
    end

    def as_json(options={})
      {
        :name => name,
        :description => description,
        :languages => languages,
        :int_languages => int_languages,
        :speed => speed,
        :size => size,
        :weapons => weapon_familiarity,
        :attributes => attributes,
        :traits => traits,
        :source => source
      }
    end
  end
end
