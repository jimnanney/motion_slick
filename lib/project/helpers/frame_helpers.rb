module MSK

  module FrameHelpers

    def mid_x
      CGRectGetMidX(self.frame)
    end

    def mid_y
      CGRectGetMidY(self.frame)
    end

    def height
      CGRectGetHeight(self.frame)
    end

    def width
      CGRectGetWidth(self.frame)
    end

    def top
      CGRectGetMaxY(self.frame)
    end

    def bottom
      CGRectGetMinY(self.frame)
    end

    def left
      CGRectGetMinX(self.frame)
    end

    def right
      CGRectGetMaxX(self.frame)
    end
  end

end
