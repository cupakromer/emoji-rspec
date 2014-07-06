require 'rspec/core/formatters/console_codes'

module EmojiTestLove
  module RSpecFormatter
    class << self; attr_accessor :known_formatters; end

    def self.included(formatter)
      ::RSpec::Core::Formatters.register formatter,
        :example_passed,
        :example_failed,
        :example_pending,
        :start_dump,
        :dump_summary,
        :dump_failures,
        :dump_pending,
        :seed

      formatter.instance_eval do
        attr_reader :output
      end

      self.known_formatters ||= []
      self.known_formatters << formatter
    end

    def initialize(output)
      @output = output
    end

    def example_passed(notification)
      @output << passed_display
    end

    def example_failed(notification)
      @output << failed_display
    end

    def example_pending(notification)
      @output << pending_display
    end

    def start_dump(notification)
      output.puts
    end

    def dump_summary(summary)
      output.puts summary.fully_formatted
    end

    def dump_failures(notification)
      return if notification.failure_notifications.empty?
      output.puts notification.fully_formatted_failed_examples
    end

    def dump_pending(notification)
      return if notification.pending_examples.empty?
      output.puts notification.fully_formatted_pending_examples
    end

    def seed(notification)
      return unless notification.seed_used?
      output.puts notification.fully_formatted
    end
  end
end
