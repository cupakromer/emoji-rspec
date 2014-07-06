module EmojiTestLove
  class WaddlesFormatter
    include RSpecFormatter

    def self.names
      ['waddles']
    end

    def passed_display
      "\u{1f437} "
    end

    def failed_display
      "\u{1f41b} "
    end

    def pending_display
      "\u{1f331} "
    end
  end
end
