module MSK::Actions::Visibility

  alias_method :show, :unhide

  def unhide
    SKAction.unhide
  end

  def hide
    SKAction.hide
  end

  def remove_from_parent
    SKAction.removeFromParent
  end

end

