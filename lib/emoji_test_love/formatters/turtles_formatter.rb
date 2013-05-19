module EmojiTestLove
  class Turtles
    def passed_display
      "\u{1f422} "
    end

    def failed_display
      "\u{1f41e} "
    end

    def pending_display
      "\u{1f40c} "
    end

    def names
      ['turtles', 'all_the_way_down', 'turtles_all_the_way_down']
    end
  end
end
