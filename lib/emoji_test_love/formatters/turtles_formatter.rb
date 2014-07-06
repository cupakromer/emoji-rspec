module EmojiTestLove
  class TurtlesFormatter
    include RSpecFormatter

    def self.names
      ['turtles', 'all_the_way_down', 'turtles_all_the_way_down']
    end

    def passed_display
      "\u{1f422} "
    end

    def failed_display
      "\u{1f41e} "
    end

    def pending_display
      "\u{1f40c} "
    end
  end
end
