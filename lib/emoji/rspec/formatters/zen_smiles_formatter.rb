require_relative 'base'

module Emoji
  module RSpec
    module Formatters
      class ZenSmilesFormatter < Base
        def passed_display
          "\u{1f610} "
        end

        def failed_display
          "\u{1f61e} "
        end

        def pending_display
          "\u{1f614} "
        end
      end
    end
  end
end
