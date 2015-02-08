module MSK::ActionTimings

  def ease_in
    timing_mode = SKActionTimingEaseIn
    self
  end

  def ease_out
    timing_mode = SKActionTimingEaseOut
    self
  end

  def linear
    timing_mode = SKActionTimingLinear
    self
  end

end

