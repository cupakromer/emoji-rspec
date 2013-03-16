module EmojiTestLove
  class Thumbs
    def passed_display
      "\u{1f44d} "
    end

    def failed_display
      "\u{1f44e} "
    end

    def pending_display
      "\u{270b} "
    end
  end
end
EmojiTestLove::RSpecFormatter(EmojiTestLove::Thumbs.new, "Thumbs")
