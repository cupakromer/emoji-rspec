module EmojiTestLove
  class Books
    def passed_display
      "\u{1f4d7} "
    end

    def failed_display
      "\u{1f4d5} "
    end

    def pending_display
      "\u{1f4d9} "
    end

    def names
      ['books', 'reading_rainbow']
    end
  end
end
