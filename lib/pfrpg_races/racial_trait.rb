module PfrpgRaces
  class RacialTrait

    attr_accessor :name, :description, :effects
    def initialize(args)
      @name         = args[:name]
      @description  = args[:description]
      @effects      = args[:effects]
      @effects    ||= []
    end

    def get_effects
      effects
    end

    def as_json(options={})
      {  :name => name,
         :description => description
      }
    end

  end
end
