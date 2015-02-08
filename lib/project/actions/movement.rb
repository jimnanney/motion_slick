module MSK::Actions::Movement
  def move_to(location, duration)
    SKAction.moveTo(location, duration: duration)
  end

  def move_by(delta, duration=0.25)
    SKAction.moveBy(delta, duration: duration)
  end

  def move_by_delta(x, y, duration=0.25)
    SKAction.moveByX(x, y: y, duration: duration)
  end

  def move_to_x(x, duration=0.25)
    SKAction.moveToX(x, duration: duration)
  end

  def move_to_y(y, duration=0.25)
    SKAction.moveToY(y, duration: duration)
  end

  def duration_path(path, duration=0.25, offset=true, orient=true)
    SKAction.followPath(path, asOffset: offset, orientToPath: orient, duration: duration)
  end

  def speed_path(path, speed=1.0, offset=true, orient=true)
    SKAction.followPath(path, asOffset: offset, orientToPath: orient, speed: speed)
  end

end

