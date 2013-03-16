module EmojiTestLove
  class LifeHearts
    def passed_display
      "\u{1f49a} "
    end

    def failed_display
      "\u{1f494} "
    end

    def pending_display
      "\u{1f49b} "
    end
  end
end
EmojiTestLove::RSpecFormatter(EmojiTestLove::LifeHearts.new, "LifeHearts")
