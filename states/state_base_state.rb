module State
  class BaseState

    def initialize
      @entities = []
      $font = Gosu::Font.new($window, Gosu::default_font_name, 20)
    end

    def button_down(id)      
      @entities.each do |entity|
        entity.button_down(id) if entity.respond_to? :button_down
      end

      # debug below
      if Gosu.button_down? Gosu::KB_Q
        exit(0)
      end
    end

    def add_entity(entity)
      @entities.push(entity)
    end

    def update
      @entities.each do |entity|
        entity.update
      end
    end

    def draw

    end
  end
end