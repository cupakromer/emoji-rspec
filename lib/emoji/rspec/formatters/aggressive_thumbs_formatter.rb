require_relative 'base'

module Emoji
  module RSpec
    module Formatters
      class AggressiveThumbsFormatter < Base
        def passed_display
          "\u{1f44c} "
        end

        def failed_display
          "\u{1f44a} "
        end

        def pending_display
          "\u{270a} "
        end
      end
    end
  end
end
