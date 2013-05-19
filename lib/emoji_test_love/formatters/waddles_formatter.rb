module EmojiTestLove
  class Waddles
    def passed_display
      "\u{1f437} "
    end

    def failed_display
      "\u{1f41b} "
    end

    def pending_display
      "\u{1f331} "
    end

    def names
      ['waddles']
    end
  end
end
