module EmojiTestLove
  class SunshineFormatter
    include RSpecFormatter

    def self.names
      ['sunshine', 'sunny']
    end

    def passed_display
      "\u{2600} "
    end

    def failed_display
      "\u{2614} "
    end

    def pending_display
      "\u{2601} "
    end
  end
end
