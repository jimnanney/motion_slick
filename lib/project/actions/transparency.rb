module MSK::Actions::Transparency

  def fade_in(duration=0.25)
    SKAction.fadeInWithDuration duration
  end

  def fade_out(duration=0.25)
    SKAction.fadeInWithDuration duration
  end

  def fadeBy(factor, duration=0.25)
    SKAction.fadeAlphaBy(factor, duration: duration)
  end

  def fadeTo(alpha, duration=0.25)
    SKAction.fadeAlphaTo(alpha, duration: duration)
  end

end

