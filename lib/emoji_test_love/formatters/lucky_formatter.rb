module EmojiTestLove
  class Lucky
    def passed_display
      "\u{1f340} "
    end

    def failed_display
      "\u{1f344} "
    end

    def pending_display
      "\u{1f330} "
    end

    def names
      ['lucky']
    end
  end
end
