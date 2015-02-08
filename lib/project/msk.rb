module MSK::ActionDSL
  include MSK::Actions::Movement
  include MSK::Actions::Rotation
  include MSK::Actions::Speed
  include MSK::Actions::Scale
  include MSK::Actions::Visibility
  include MSK::Actions::Transparency
  include MSK::Actions::Content
  include MSK::Actions::Sound
  include MSK::Actions::Delay
  include MSK::Actions::Runners
  include MSK::DSL
end

class SKNode
  include MSK::ActionDSL
  include MSK::FrameHelpers
  alias_method :run_action :runAction
end

class SKAction
  include MSK::ActionTimings
end

