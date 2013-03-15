require 'rspec/core/formatters/base_text_formatter'
module EmojiTestLove
  class RSpecIntegration < ::RSpec::Core::Formatters::BaseTextFormatter
    class << self
      attr_reader :display_provider
      def display_provider=(provider)
        @display_provider = provider
      end
    end

    def display_provider
      self.class.display_provider
    end
    def example_passed(example)
      super(example)
      output.print self.display_provider.passed_display
    end
    def example_failed(example)
      super(example)
      output.print self.display_provider.failed_display
    end
    def example_pending(example)
      super(example)
      output.print self.display_provider.pending_display
    end
  end
  def self.RSpecFormatter(display_provider, formatter_name = display_provider.name)
    formatter_class_name = "%sFormatter"%formatter_name
    base = Class.new(RSpecIntegration)
    base.display_provider = display_provider.new
    self.const_set(formatter_class_name, base)
  end
end
