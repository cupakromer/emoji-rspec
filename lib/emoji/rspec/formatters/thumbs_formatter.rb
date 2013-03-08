require_relative 'base'

module Emoji
  module RSpec
    module Formatters
      class ThumbsFormatter < Base
        def passed_display
          "\u{1f44d} "
        end

        def failed_display
          "\u{1f44e} "
        end

        def pending_display
          "\u{270b} "
        end
      end
    end
  end
end
