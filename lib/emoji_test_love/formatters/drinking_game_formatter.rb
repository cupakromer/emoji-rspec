module EmojiTestLove
  class DrinkingGameFormatter
    include RSpecFormatter

    def self.names
      ['drinking', 'drinking_game', 'drinkinggame']
    end

    def passed_display
      "\u{2615} "
    end

    def failed_display
      "\u{1f378} "
    end

    def pending_display
      "\u{1f37a} "
    end
  end
end
