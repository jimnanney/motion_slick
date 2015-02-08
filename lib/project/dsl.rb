module MSK::DSL
  class DSL
    attr_accessor :actions

    def initialize(block, parent)
      @actions = []
      @parent = parent
      instance_eval(&block) if block
    end

    def method_missing(name, *args, &block)
      if @parent.respond_to?(name)
        act = @parent.send(name, *args, &block)
      else
        act = super
      end
      @actions << act if act.kind_of?(SKAction)
      act
    end

    def respond_to?(name, include_all=false)
      @parent.respond_to?(name) || super
    end
  end
end

