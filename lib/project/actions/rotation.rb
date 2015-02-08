module MSK::Actions::Rotation

  def rotate_by(angle, duration=0.25)
    SKAction.rotateBy(angle, duration: duration)
  end

  def rotate(angle, duration=0.25)
    SKAction.rotateToAngle(angle, duration: duration)
  end

  def rotate_shortest(angle, duration=0.25, shortest=true)
    SKAction.rotateToAngle(angle, duration: duration, shortestUnitArc: shortest)
  end

end
