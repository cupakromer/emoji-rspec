module EmojiTestLove
  class FruitFormatter
    include RSpecFormatter

    def self.names
      ['apples', 'fruit']
    end

    def passed_display
      "\u{1f34f} "
    end

    def failed_display
      "\u{1f345} "
    end

    def pending_display
      "\u{1f34b} "
    end
  end
end
