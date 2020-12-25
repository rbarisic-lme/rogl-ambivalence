module Entities
  module Interface
    class Menu

      def initialize(menu_items)
        @menu_items = menu_items

        @pointer = Utils::Pointer.new(0,@menu_items.length - 1, step: 1)
      end

      def button_down(id)
        case id
          when Gosu::KB_W
            @pointer.back
          when Gosu::KB_S
            @pointer.next
          when Gosu::KB_RETURN
            @menu_items[@pointer.index][:action].call # refactor
        end
      end

      def update

      end

      def draw
        @menu_items.each_with_index do |mi, i|
          draw_color = @pointer.index == i ? Gosu::Color::WHITE : Gosu::Color::GRAY
          $font.draw(mi[:label], 16, i * 16 + 64, 1, 1.0, 1.0, draw_color)
        end
      end
    end
  end
end