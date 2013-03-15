require 'rspec/core/formatters/base_text_formatter'
module EmojiTestLove
  class RSpecIntegration < ::RSpec::Core::Formatters::BaseTextFormatter
    class << self
      attr_reader :char_provider
      def char_provider=(provider)
        @char_provider = provider.new
      end
    end
    def example_passed(example)
      super(example)
      self.class.char_provider.passed_char
    end
    def example_failed(example)
      super(example)
      self.class.char_provider.failed_char
    end
    def example_pending(example)
      super(example)
      self.class.char_provider.pending_char
    end
  end
  def self.RSpecFormatter(name)
    formatter_name = "%sFormatter"%name
    base = Class.new(RSpecIntegration)
    base.char_provider = Module.const_get(name)
    self.const_set(formatter_name, base)
  end
end
