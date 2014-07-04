module EmojiTestLove
  class LuckyFormatter
    include RSpecFormatter

    def self.names
      ['lucky']
    end

    def passed_display
      "\u{1f340} "
    end

    def failed_display
      "\u{1f344} "
    end

    def pending_display
      "\u{1f330} "
    end
  end
end
