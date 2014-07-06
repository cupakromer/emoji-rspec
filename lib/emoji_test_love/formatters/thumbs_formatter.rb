module EmojiTestLove
  class ThumbsFormatter
    include RSpecFormatter

    def self.names
      ['thumbs']
    end

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
