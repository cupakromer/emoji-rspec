module EmojiTestLove
  class AdventureTime
    PASS_EMOJI = [
      "\u{1f496} ",
      "\u{1f31f} ",
      "\u{2728} ",
      "\u{1f4ab} ",
      "\u{1f478} ",
      "\u{1f471} ",
      "\u{1f415} ",
      "\u{1f49d} ",
      "\u{2b50} ",
    ]

    FAIL_EMOJI = [
      "\u{1f608} ",
      "\u{1f47f} ",
      "\u{1f4a5} ",
      "\u{1f4a2} ",
      "\u{1f479} ",
      "\u{1f47a} ",
      "\u{1f4a9} ",
      "\u{1f432} ",
    ]

    PEND_EMOJI = [
      "\u{1f47d} ",
      "\u{1f48a} ",
      "\u{1f427} ",
      "\u{1f3b2} ",
      "\u{1f47e} ",
      "\u{1f392} ",
      "\u{1f4f1} ",
      "\u{1f526} ",
    ]

    def passed_display
      PASS_EMOJI.sample
    end
    def failed_display
      FAIL_EMOJI.sample
    end
    def pending_display
      PEND_EMOJI.sample
    end
  end
end
EmojiTestLove::RSpecFormatter(EmojiTestLove::AdventureTime.new, "AdventureTime")
