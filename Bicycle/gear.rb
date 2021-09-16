class Gear
    attr_reader :chainring, :cog, :wheel
    def initialize(chainring, cog, rim, tire)
      @chainring = chainring
      @cog = cog
      @wheels = Wheel.new(rim, tire)
    end

    def ratio
        chainring / cog.to_f
    end

    def cog
        @cog
    end

    def gear_inches
        ratio * wheel.diameter
    end

    wheel = Struct.new(:rim, :tire) do
        def diameter
            rim + (tire * 2)
        end
    end
    
end

puts Gear.new(52, 11).ratio
puts Gear.new(30, 27).ratio