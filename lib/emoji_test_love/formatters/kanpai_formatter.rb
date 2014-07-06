# encoding: utf-8

module EmojiTestLove
  class KanpaiFormatter
    include RSpecFormatter

    def self.names
      ['kanpai', '乾杯']
    end

    def passed_display
      "\u{1f376} "
    end

    def failed_display
      "\u{1f375} "
    end

    def pending_display
      "\u{1f363} "
    end
  end
end
