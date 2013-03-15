require 'emoji_test_love/rspec'

class Foo
  def passed_char
    "."
  end
  def failed_char
    "F"
  end
  def pending_char
    "P"
  end
end

EmojiTestLove::RSpecFormatter(Foo)
EmojiTestLove::RSpecFormatter(Foo, "OtherName")

describe "Generating a formatter" do
  let(:formatter) { EmojiTestLove::FooFormatter.new(nil) }
  let(:provider) { Foo.new }
  it "creates a subclass of RSpecFormatter" do
    formatter.is_a?(::RSpec::Core::Formatters::BaseTextFormatter).should be_true
  end

  it "supports passing an alternate name" do
    EmojiTestLove::OtherNameFormatter.new(nil).is_a?(::RSpec::Core::Formatters::BaseTextFormatter).should be_true
  end

  it "delegates example_passed to the passed_char to Foo" do
    formatter.example_passed(example).should == provider.passed_char
  end

  it "delegates example_failed to the failed_char to Foo" do
    formatter.example_failed(example).should == provider.failed_char
  end

  it "delegates example_pending to the pending_char to Foo" do
    formatter.example_pending(example).should == provider.pending_char
  end
end
