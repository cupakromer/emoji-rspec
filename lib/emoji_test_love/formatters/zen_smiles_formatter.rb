module EmojiTestLove
  class ZenSmiles
    def passed_display
      "\u{1f610} "
    end

    def failed_display
      "\u{1f61e} "
    end

    def pending_display
      "\u{1f614} "
    end

    def names
      ['zen', 'zen_smiles', 'zensmiles']
    end
  end
end
