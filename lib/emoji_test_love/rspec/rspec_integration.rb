require 'rspec/core/formatters/base_text_formatter'
module EmojiTestLove
  class RSpecIntegration < ::RSpec::Core::Formatters::BaseTextFormatter
    class << self
      attr_reader :display_provider, :known_formatters

      def display_provider=(provider)
        @display_provider = provider
      end

      def inherited(subclass)
        @known_formatters ||= []
        @known_formatters << subclass
      end

      def names
        Array(display_provider.names) << name
      end
    end

    def display_provider
      self.class.display_provider
    end

    def print(display)
      output.print display
    end

    def example_passed(example)
      super(example)
      self.print self.display_provider.passed_display
    end
    def example_failed(example)
      super(example)
      self.print self.display_provider.failed_display
    end
    def example_pending(example)
      super(example)
      self.print self.display_provider.pending_display
    end
  end
  def self.RSpecFormatter(display_provider, formatter_name = display_provider.class.name)
    formatter_class_name = "%sFormatter"%formatter_name
    base = Class.new(RSpecIntegration)
    base.display_provider = display_provider
    self.const_set(formatter_class_name, base)
  end
end
