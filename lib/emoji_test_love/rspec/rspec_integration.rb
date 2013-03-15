require 'rspec/core/formatters/base_text_formatter'
module EmojiTestLove
  class RSpecIntegration < ::RSpec::Core::Formatters::BaseTextFormatter
    class << self
      attr_reader :char_provider
      def char_provider=(provider)
        @char_provider = provider
      end
    end

    def char_provider
      self.class.char_provider
    end
    def example_passed(example)
      super(example)
      self.char_provider.passed_char
    end
    def example_failed(example)
      super(example)
      self.char_provider.failed_char
    end
    def example_pending(example)
      super(example)
      self.char_provider.pending_char
    end
  end
  def self.RSpecFormatter(char_provider, formatter_name = char_provider.name)
    formatter_class_name = "%sFormatter"%formatter_name
    base = Class.new(RSpecIntegration)
    base.char_provider = char_provider.new
    self.const_set(formatter_class_name, base)
  end
end
