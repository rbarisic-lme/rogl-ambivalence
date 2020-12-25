module State
  class Game < State::BaseState

    def initialize
      super

      @sprite = Gosu::Image.new("assets/player/ship1.png", :tileable => true)

      @x = 0
      @y = 0
    end

    def button_down(id)
      super

      if id == Gosu::KB_ESCAPE
        $states.next_state(State::Paused.new)
      end
    end

    def update
      super

      @x += rand(5)

      @y += rand(5)
    end

    def draw
      super
      $font.draw("Game", 16, 16, 1, 1.0, 1.0, Gosu::Color::WHITE)

      @sprite.draw(@x,@y,1,1)

      $font.draw("HP: 200", 16, $window.height - 64, 1, 1.0, 1.0, Gosu::Color::WHITE)
      $font.draw("23$", 16, $window.height - 32, 1, 1.0, 1.0, Gosu::Color::WHITE)
    end
  end
end