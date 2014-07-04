# encoding: utf-8

module EmojiTestLove
  class OmkaseFormatter
    include RSpecFormatter

    def self.names
      ['omkase', 'お任せ']
    end

    def passed_display
      "\u{1f361} "
    end

    def failed_display
      "\u{1f358} "
    end

    def pending_display
      "\u{1f365} "
    end
  end
end
