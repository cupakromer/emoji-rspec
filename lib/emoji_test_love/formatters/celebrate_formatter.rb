module EmojiTestLove
  class Celebrate
    def passed_display
      "\u{1f37b} "
    end

    def failed_display
      "\u{2615} "
    end

    def pending_display
      "\u{1f355} "
    end

    def names
      ['celebrate', 'celebration', 'cheers']
    end
  end
end
