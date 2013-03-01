require_relative 'base'

module Emoji
  module RSpec
    module Formatters
      class DrinkingGameTeaFormatter < Base
        def passed_display
          "\u{1f375} "
        end

        def failed_display
          "\u{1f378} "
        end

        def pending_display
          "\u{1f37a} "
        end
      end
    end
  end
end
