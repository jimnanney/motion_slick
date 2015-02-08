module MSK::Actions::Delay

  def wait(duration = 0.25, with_range = nil)
    return SKAction.waitForDuration(duration) unless with_range
    SKAction.waitForDuration(duration, with_range)
  end

end
