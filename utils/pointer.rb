module Utils
  class Pointer
    attr_accessor :index

    def initialize(start_index = 0, minimum, maximum, step: 1)
      @index = start_index
      @minimum = minimum
      @maximum = maximum
      @step = step
    end

    def next
      if @index > @maximum
        raise "index out of bounds"
      elsif @index + @step <= @maximum
        @index += @step
      end
    end

    def back
      if @index < @minimum
        raise "index out of bounds"
      elsif @index - @step >= @minimum
        @index -= @step
      end
    end

  end
end