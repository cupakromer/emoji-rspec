module EmojiTestLove
  class DrinkingGame
    def passed_display
      "\u{2615} "
    end

    def failed_display
      "\u{1f378} "
    end

    def pending_display
      "\u{1f37a} "
    end

    def names
      ['drinking', 'drinking_game', 'drinkinggame']
    end
  end
end
