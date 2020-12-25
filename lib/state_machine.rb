module Lib
  class StateMachine
    attr_accessor :state

    def initialize(state)
      @states = [state]
    end

    def current
      @states.last
    end

    def pop
      if @states.length > 1
        @states.pop

        @states
      else
        $logger.warn "tried to push last existing state"
      end
    end

    def next_state(state)
      @states = @states.push(state)
    end

    def load(state)
      next_state(state)
    end

    def next(state)
      next_state(state)
    end
  end
end