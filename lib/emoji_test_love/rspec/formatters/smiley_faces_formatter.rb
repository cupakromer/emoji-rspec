module EmojiTestLove
  class Smiles
    def passed_display
      "\u{1f60a} "
    end

    def failed_display
      "\u{1f621} "
    end

    def pending_display
      "\u{1f62c} "
    end
  end
end
EmojiTestLove::RSpecFormatter(EmojiTestLove::Smiles.new, "SmileyFaces")
