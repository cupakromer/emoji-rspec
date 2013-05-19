module EmojiTestLove
  class Sunshine
    def passed_display
      "\u{2600} "
    end

    def failed_display
      "\u{2614} "
    end

    def pending_display
      "\u{2601} "
    end

    def names
      ['sunshine', 'sunny']
    end
  end
end
