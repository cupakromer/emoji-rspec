require 'emoji_test_love/rspec/rspec_integration'

module TestFormatter
  def passed_display
    "."
  end
  def failed_display
    "F"
  end
  def pending_display
    "P"
  end
  def names
    'foo'
  end
end

module Bar
  module Baz
    class Qux
      include TestFormatter
    end
  end
end

class Foo
  include TestFormatter
end

EmojiTestLove::RSpecFormatter(Foo.new)
EmojiTestLove::RSpecFormatter(Foo.new, "OtherName")
EmojiTestLove::RSpecFormatter(::Bar::Baz::Qux.new)

describe "Generating a formatter" do

  let(:output) { stub }
  let(:formatter) { EmojiTestLove::FooFormatter.new(output) }
  let(:provider) { Foo.new }

  context "registering a formatter" do
    it "creates a subclass of RSpecFormatter" do
      expect(formatter).to be_a(::RSpec::Core::Formatters::BaseTextFormatter)
    end

    it "is registered with RSpecIntegration" do
      expect(::EmojiTestLove::RSpecIntegration.known_formatters)
        .to include ::EmojiTestLove::FooFormatter
    end

    it "supports passing an alternate name" do
      expect(EmojiTestLove::OtherNameFormatter.new(nil))
        .to be_a(::RSpec::Core::Formatters::BaseTextFormatter)
    end

    it "registers the alternate name with RSpecIntegration" do
      expect(::EmojiTestLove::RSpecIntegration.known_formatters)
        .to include ::EmojiTestLove::OtherNameFormatter
    end

    it "supports a namespaced class" do
      expect(EmojiTestLove::Bar::Baz::QuxFormatter.new(nil))
        .to be_a(::RSpec::Core::Formatters::BaseTextFormatter)
    end

    it "registers the namespaced class with RSpecIntegration" do
      expect(::EmojiTestLove::RSpecIntegration.known_formatters)
        .to include ::EmojiTestLove::Bar::Baz::QuxFormatter
    end
  end

  context "generating output for an example" do
    let(:output) { StringIO.new }

    around do |example|
      original_success_color = nil
      original_failure_color = nil
      original_pending_color = nil

      RSpec.configure do |config|
        original_success_color = config.success_color
        original_failure_color = config.failure_color
        original_pending_color = config.pending_color
        config.color_enabled = true
        config.tty = true
        config.success_color = :cyan
        config.failure_color = :purple
        config.pending_color = :blue
      end

      example.yield

      RSpec.configure do |config|
        config.success_color = original_success_color
        config.failure_color = original_failure_color
        config.pending_color = original_pending_color
      end
    end

    it "delegates example_passed to the passed_display of Foo" do
      output.should_receive(:print).with(/#{provider.passed_display}/)
      formatter.example_passed(example)
    end

    it "uses the custom success color" do
      formatter.example_passed example
      expect(output.string).to include("\e[36m")
    end

    it "delegates example_failed to the failed_display of Foo" do
      output.should_receive(:print).with(/#{provider.failed_display}/)
      formatter.example_failed(example)
    end

    it "uses the custom failure color" do
      formatter.example_failed example
      expect(output.string).to include("\e[37m")
    end

    it "delegates example_pending to the pending_display of Foo" do
      output.should_receive(:print).with(/#{provider.pending_display}/)
      formatter.example_pending(example)
    end

    it "uses the custom pending color" do
      formatter.example_pending example
      expect(output.string).to include("\e[34m")
    end
  end

  context "specifying a formatter on the command line" do
    it "includes the class name in the custom command line names list" do
      expect(::EmojiTestLove::FooFormatter.names)
        .to match_array ['foo', 'EmojiTestLove::FooFormatter']
    end

    it "delegates to the Foo instance for the custom command line names" do
      ::EmojiTestLove::FooFormatter.should_receive(:names)

      ::EmojiTestLove::RSpecIntegration.known_formatters.each(&:names)
    end
  end

end
