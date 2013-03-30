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
    base                       = new_formatter display_provider
    formatter_name, namespaces = *split_by_namespace(formatter_name)
    scope                      = ensure_namespace_exists namespaces
    formatter_class_name       = "%sFormatter"%formatter_name

    scope.const_set(formatter_class_name, base)
  end

  private

  def self.split_by_namespace(formatter_name)
    namespaces = formatter_name.split('::')
    [namespaces.pop, namespaces]
  end

  def self.new_formatter(delegator)
    Class.new(RSpecIntegration).tap{|base| base.display_provider = delegator}
  end

  def self.ensure_namespace_exists(namespaces)
    namespaces.inject(self) do |scope, name|
      scope.const_set(name, Module.new) unless scope.const_defined?(name, false)

      scope.const_get(name, false)
    end
  end

end
