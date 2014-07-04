module EmojiTestLove
  class LifeHeartsFormatter
    include RSpecFormatter

    def self.names
      ['hearts', 'life', 'life_hearts', 'lifehearts']
    end

    def passed_display
      "\u{1f49a} "
    end

    def failed_display
      "\u{1f494} "
    end

    def pending_display
      "\u{1f49b} "
    end
  end
end
