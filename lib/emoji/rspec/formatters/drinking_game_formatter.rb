require 'rspec/core/formatters/base_text_formatter'

module Emoji
  module RSpec
    module Formatters

      class DrinkingGameFormatter < ::RSpec::Core::Formatters::BaseTextFormatter
        def example_passed(example)
          super(example)
          output.print green "\u{2615} "
        end

        def example_failed(example)
          super(example)
          output.print red "\u{1f378} "
        end

        def example_pending(example)
          super(example)
          output.print yellow "\u{1f37a} "
        end
      end

    end
  end
end
