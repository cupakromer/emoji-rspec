require 'emoji_test_love/rspec/rspec_integration'

module EmojiTestLove
  class Thumbs
    def passed_display
      "\u{1f44d} "
    end

    def failed_display
      "\u{1f44e} "
    end

    def pending_display
      "\u{270b} "
    end

    def names
      'thumbs'
    end
  end
end
EmojiTestLove::RSpecFormatter(EmojiTestLove::Thumbs.new, "Thumbs")
