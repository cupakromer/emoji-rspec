shared_examples "an Emoji Test Love Formatter" do
  if rspec3?
    subject { described_class.new(double) }
    it { should respond_to :example_passed }
    it { should respond_to :example_failed }
    it { should respond_to :example_pending }
  end

  it { should respond_to :passed_display }
  it { should respond_to :failed_display }
  it { should respond_to :pending_display }
  it { should respond_to :names }
end
