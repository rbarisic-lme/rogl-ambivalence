module State
  class Paused < State::BaseState

    def initialize
      super

      add_entity Entities::Interface::Menu.new([
        {label: "Continue", action: -> {$states.pop}},
        {label: "Settings", action: -> {}},
        {label: "Restart", action: -> {$states.next(State::Game.new)}},
        {label: "Exit", action: -> {exit}}
      ])
    end

    def update
      super

      @entities.each do |entity|
        entity.update
      end
    end

    def draw
      $font.draw("Paused", 16, 16, 1, 1.0, 1.0, Gosu::Color::WHITE)

      @entities.each do |entity|
        entity.draw
      end
    end
  end
end