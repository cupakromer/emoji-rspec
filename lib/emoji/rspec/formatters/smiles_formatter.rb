require_relative 'base'

module Emoji
  module RSpec
    module Formatters
      class SmilesFormatter < Base
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
  end
end
