class RevealingReferences
    attr_reader :wheels
    
    def initialize(data)
        @wheels = wheelify(data)
    end

    # 배열을 하나씩 훑는다.
    def diameters
        wheels.collect {|wheel| diameter(wheel)}
    end

    # 바퀴 한 개의 지름을 계산한다.
    def diameter
        wheel.rim + (wheel.tire * 2)
    end

    # 지름을 계산하는 식을 가져와서 사용 (재사용성을 높임)
    def gear_inched
        ratio * diameter
    end

    Wheel = Struct.new(:rim, :tire)
    def wheelify(data)
        data.collect do |cell|
            Wheel.new(cell[0], cell[1])
        end
    end
    
end

puts RevealingReferences.new([[622,20], [622,23], [559, 30], [559, 40]]).diameters