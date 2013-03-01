require 'rspec/core/formatters/base_text_formatter'

module Emoji
  module RSpec
    module Formatters

      class AdventureTimeFormatter < ::RSpec::Core::Formatters::BaseTextFormatter
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

        def example_passed(example)
          super(example)
          output.print success_color rand_emoji PASS_EMOJI
        end

        def example_failed(example)
          super(example)
          output.print failure_color rand_emoji FAIL_EMOJI
        end

        def example_pending(example)
          super(example)
          output.print pending_color rand_emoji PEND_EMOJI
        end

        private

        def rand_emoji(collection)
          collection[rand collection.size]
        end
      end

    end
  end
end
