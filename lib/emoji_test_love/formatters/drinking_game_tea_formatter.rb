module EmojiTestLove
  class DrinkingGameTeaFormatter
    include RSpecFormatter

    def self.names
      ['drinking_tea', 'drinking_game_tea', 'drinkingtea', 'drinkinggametea']
    end

    def passed_display
      "\u{1f375} "
    end

    def failed_display
      "\u{1f378} "
    end

    def pending_display
      "\u{1f37a} "
    end
  end
end
