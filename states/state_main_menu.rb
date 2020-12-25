module State
  class MainMenu < State::BaseState

    def initialize
      super

      add_entity Entities::Interface::Menu.new([
        {label: "New Game", action: -> {$states.next(State::Game.new)}},
        {label: "(c) by xrlabs, 2020", action: -> {}},
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
      $font.draw("Ambivalence Ruby 2020", 16, 16, 1, 1.0, 1.0, Gosu::Color::WHITE)

      @entities.each do |entity|
        entity.draw
      end
    end
  end
end