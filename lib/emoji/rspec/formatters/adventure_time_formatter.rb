require 'rspec/core/formatters/base_text_formatter'
require 'emoji/helper'

module Emoji
  module RSpec
    module Formatters

      class AdventureTimeFormatter < ::RSpec::Core::Formatters::BaseTextFormatter
        PASS_EMOJI = %w[ 1f496 1f31f 2728  1f4ab 1f478 1f471 1f415 1f49d 2b50  ]

        FAIL_EMOJI = %w[ 1f608 1f47f 1f4a5 1f4a2 1f479 1f47a 1f4a9 1f432 ]

        PEND_EMOJI = %w[ 1f47d 1f48a 1f427 1f3b2 1f47e 1f392 1f4f1 1f526 ]

        def example_passed(example)
          super(example)
          output.print success_color "#{Emoji::Helper.utf8_encode(rand_emoji PASS_EMOJI)} "
        end

        def example_failed(example)
          super(example)
          output.print failure_color "#{Emoji::Helper.utf8_encode(rand_emoji FAIL_EMOJI)} "
        end

        def example_pending(example)
          super(example)
          output.print pending_color "#{Emoji::Helper.utf8_encode(rand_emoji PEND_EMOJI)} "
        end

        private

        def rand_emoji(collection)
          collection[rand collection.size]
        end
      end

    end
  end
end
