module EmojiTestLove
  class AggressiveThumbs
    def passed_display
      "\u{1f44c} "
    end

    def failed_display
      "\u{1f44a} "
    end

    def pending_display
      "\u{270a} "
    end

    def names
      ['aggressive_thumbs', 'aggressivethumbs']
    end
  end
end
