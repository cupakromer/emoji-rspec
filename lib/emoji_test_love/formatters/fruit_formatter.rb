module EmojiTestLove
  class Fruit
    def passed_display
      "\u{1f34f} "
    end

    def failed_display
      "\u{1f345} "
    end

    def pending_display
      "\u{1f34b} "
    end

    def names
      ['apples', 'fruit']
    end
  end
end
