shared_examples "an Emoji Test Love Formatter" do
  it { should respond_to :passed_display }
  it { should respond_to :failed_display }
  it { should respond_to :pending_display }
  it { should respond_to :names }
end
