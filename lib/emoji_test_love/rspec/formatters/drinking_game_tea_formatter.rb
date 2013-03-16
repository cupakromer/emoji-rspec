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
  end
end
EmojiTestLove::RSpecFormatter(EmojiTestLove::DrinkingGameTea.new, "DrinkingGameTea")
