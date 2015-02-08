module MSK::Actions
  module Visibility

    def unhide
      SKAction.unhide
    end

    def hide
      SKAction.hide
    end

    def remove_from_parent
      SKAction.removeFromParent
    end

    alias_method :show, :unhide

  end
end

