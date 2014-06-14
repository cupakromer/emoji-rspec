require 'emoji_test_love/formatters'

[
  EmojiTestLove::AdventureTime,
  EmojiTestLove::AggressiveThumbs,
  EmojiTestLove::Books,
  EmojiTestLove::Celebrate,
  EmojiTestLove::DrinkingGame,
  EmojiTestLove::DrinkingGameTea,
  EmojiTestLove::Fruit,
  EmojiTestLove::Kanpai,
  EmojiTestLove::LifeHearts,
  EmojiTestLove::Lucky,
  EmojiTestLove::Omkase,
  EmojiTestLove::SmileDip,
  EmojiTestLove::Smiles,
  EmojiTestLove::Sunshine,
  EmojiTestLove::Thumbs,
  EmojiTestLove::Turtles,
  EmojiTestLove::Waddles,
  EmojiTestLove::ZenSmiles,
].each do |formatter|
  formatter.class_eval do
    def initialize(output)
      @output = output
    end

    def example_passed(notification)
      @output << passed_display
    end

    def example_failed(notification)
      @output << failed_display
    end

    def example_pending(notification)
      @output << pending_display
    end
  end

  ::RSpec::Core::Formatters.register formatter,
    :example_passed,
    :example_failed,
    :example_pending
end
