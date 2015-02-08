module MSK::Actions
  module Speed
    def speed_by(speed, duration=0.25)
      SKAction.speedBy(speed, duration: duration)
    end

    def speed_to(speed, duration=0.25)
      SKAction.speedTo(speed, duration: duration)
    end
  end

end

