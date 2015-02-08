module MSK::Actions::Runners

  def run_sequence(&block)
    seq = sequence &block
    runAction seq
  end

  def run_group(&block)
    runAction group(block)
  end

  def group(&block)
    grp = DSL.new(block, self)
    SKAction.group(grp.actions)
  end

  def repeat(count, action = nil,  &block)
    seq = (action) ? action : sequence(&block)
    SKAction.repeatAction(seq, count)
  end

  def sequence(&block)
    seq = DSL.new(block, self)
    SKAction.sequence(seq.actions)
  end

  def other_action(other)
    other
  end

  def run_block(&block)
    SKAction.runBlock(block)
  end
end

