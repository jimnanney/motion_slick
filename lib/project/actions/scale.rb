module MSK::Actions
  module Scale

    def scale_by(scale, duration=0.25)
      SKAction.scaleBy(scale, duration: duration)
    end

    def scale_to(scale = 1.0, duration=0.25)
      SKAction.scaleTo(scale, duration: duration)
    end

    def scale_xy_by(x, y, duation=0.25)
      SKAction.scaleXBy(x, y: y, duration: duration)
    end

    def scale_xy_to(x, y, duration=0.25)
      SKAction.scaleXTo(x, y: y, duration: duration)
    end

    def scale_x(x, duration=0.25)
      SKAction.scaleXTo(x, duration: duration)
    end

    def scale_y(y, duration=0.25)
      SKAction.scaleYTo(y, duration: duration)
    end
  end
end

