module EmojiTestLove
  class SmileDipFormatter
    include RSpecFormatter

    def self.names
      ['smile_dip', 'smiledip', 'fundip', 'fun_dip', 'aoshima']
    end

    def passed_display
      "\u{1f36d} "
    end

    def failed_display
      "\u{1f47b} "
    end

    def pending_display
      "\u{1f42c} "
    end
  end
end
