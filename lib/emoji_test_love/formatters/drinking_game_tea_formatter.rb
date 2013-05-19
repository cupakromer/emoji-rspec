module EmojiTestLove
  class DrinkingGameTea
    def passed_display
      "\u{1f375} "
    end

    def failed_display
      "\u{1f378} "
    end

    def pending_display
      "\u{1f37a} "
    end

    def names
      ['drinking_tea', 'drinking_game_tea', 'drinkingtea', 'drinkinggametea']
    end
  end
end
