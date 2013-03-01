require_relative 'base'

module Emoji
  module RSpec
    module Formatters
      class LifeHeartsFormatter < Base
        def passed_display
          "\u{1f49a} "
        end

        def failed_display
          "\u{1f494} "
        end

        def pending_display
          "\u{1f49b} "
        end
      end
    end
  end
end
