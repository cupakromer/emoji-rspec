module EmojiTestLove
  class AggressiveThumbsFormatter
    include RSpecFormatter

    def self.names
      ['aggressive_thumbs', 'aggressivethumbs']
    end

    def passed_display
      "\u{1f44c} "
    end

    def failed_display
      "\u{1f44a} "
    end

    def pending_display
      "\u{270a} "
    end
  end
end
