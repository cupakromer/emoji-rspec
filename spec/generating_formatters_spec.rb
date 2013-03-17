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

EmojiTestLove::RSpecFormatter(Foo.new)
EmojiTestLove::RSpecFormatter(Foo.new, "OtherName")

describe "Generating a formatter" do

  let(:output) { stub }
  let(:formatter) { EmojiTestLove::FooFormatter.new(output) }
  let(:provider) { Foo.new }

  it "creates a subclass of RSpecFormatter" do
    expect(formatter).to be_a(::RSpec::Core::Formatters::BaseTextFormatter)
  end

  it "supports passing an alternate name" do
    expect(EmojiTestLove::OtherNameFormatter.new(nil))
      .to be_a(::RSpec::Core::Formatters::BaseTextFormatter)
  end

  it "supports a namespaced class"

  it "delegates example_passed to the passed_display of Foo" do
    output.should_receive(:print).with(provider.passed_display)
    formatter.example_passed(example)
  end

  it "delegates example_failed to the failed_display of Foo" do
    output.should_receive(:print).with(provider.failed_display)
    formatter.example_failed(example)
  end

  it "delegates example_pending to the pending_display of Foo" do
    output.should_receive(:print).with(provider.pending_display)
    formatter.example_pending(example)
  end

end
