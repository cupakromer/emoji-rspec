require 'rspec/core/formatters/base_text_formatter'
require 'emoji/helper'

module Emoji
  module RSpec
    module Formatters

      class LifeHeartsFormatter < ::RSpec::Core::Formatters::BaseTextFormatter
        def example_passed(example)
          super(example)
          output.print success_color "#{Emoji::Helper.utf8_encode('1f49a')} "
        end

        def example_failed(example)
          super(example)
          output.print failure_color "#{Emoji::Helper.utf8_encode('1f494')} "
        end

        def example_pending(example)
          super(example)
          output.print pending_color "#{Emoji::Helper.utf8_encode('1f49b')} "
        end
      end

    end
  end
end
