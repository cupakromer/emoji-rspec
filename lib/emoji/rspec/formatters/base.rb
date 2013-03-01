require 'rspec/core/formatters/base_text_formatter'

module Emoji
  module RSpec
    module Formatters
      class Base < ::RSpec::Core::Formatters::BaseTextFormatter
        def example_passed(example)
          super(example)
          output.print success_color passed_display
        end
        def passed_display
          "."
        end

        def example_failed(example)
          super(example)
          output.print failure_color failed_display
        end
        def failed_display
          "F"
        end

        def example_pending(example)
          super(example)
          output.print pending_color pending_display
        end
        def pending_display
          "P"
        end
      end
    end
  end
end
