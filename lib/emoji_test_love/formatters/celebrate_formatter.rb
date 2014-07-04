module EmojiTestLove
  class CelebrateFormatter
    include RSpecFormatter

    def self.names
      ['celebrate', 'celebration', 'cheers']
    end

    def passed_display
      "\u{1f37b} "
    end

    def failed_display
      "\u{2615} "
    end

    def pending_display
      "\u{1f355} "
    end
  end
end
