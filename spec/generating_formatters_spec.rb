require 'emoji_test_love/rspec/rspec_integration'

class Foo
  def passed_display
    "."
  end
  def failed_display
    "F"
  end
  def pending_display
    "P"
  end
end

EmojiTestLove::RSpecFormatter(Foo)
EmojiTestLove::RSpecFormatter(Foo, "OtherName")

describe "Generating a formatter" do
  let(:output) { stub }
  let(:formatter) { EmojiTestLove::FooFormatter.new(output) }
  let(:provider) { Foo.new }
  it "creates a subclass of RSpecFormatter" do
    formatter.is_a?(::RSpec::Core::Formatters::BaseTextFormatter).should be_true
  end

  it "supports passing an alternate name" do
    EmojiTestLove::OtherNameFormatter.new(nil).is_a?(::RSpec::Core::Formatters::BaseTextFormatter).should be_true
  end

  it "delegates example_passed to the passed_display to Foo" do
    output.should_receive(:print).with(provider.passed_display)
    formatter.example_passed(example)
  end

  it "delegates example_failed to the failed_display to Foo" do
    output.should_receive(:print).with(provider.failed_display)
    formatter.example_failed(example)
  end

  it "delegates example_pending to the pending_display to Foo" do
    output.should_receive(:print).with(provider.pending_display)
    formatter.example_pending(example)
  end
end
