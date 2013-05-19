# encoding: utf-8

module EmojiTestLove
  class Kanpai
    def passed_display
      "\u{1f376} "
    end

    def failed_display
      "\u{1f375} "
    end

    def pending_display
      "\u{1f363} "
    end

    def names
      ['kanpai', '乾杯']
    end
  end
end
