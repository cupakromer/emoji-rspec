require 'emoji_test_love/rspec/rspec_integration'

module EmojiTestLove
  class LifeHearts
    def passed_display
      "\u{1f49a} "
    end

    def failed_display
      "\u{1f494} "
    end

    def pending_display
      "\u{1f49b} "
    end

    def names
      ['hearts', 'life', 'life_hearts', 'lifehearts']
    end
  end
end
EmojiTestLove::RSpecFormatter(EmojiTestLove::LifeHearts.new, "LifeHearts")
