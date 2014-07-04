shared_examples "an Emoji Test Love Formatter" do

  describe "class" do
    subject { described_class }

    it { is_expected.to respond_to(:names) }
  end

  describe "instance" do
    subject { described_class.new(StringIO.new) }

    it { is_expected.to respond_to(:example_passed)  }
    it { is_expected.to respond_to(:example_failed)  }
    it { is_expected.to respond_to(:example_pending) }
    it { is_expected.to respond_to(:dump_summary)    }
    it { is_expected.to respond_to(:dump_failures)   }
    it { is_expected.to respond_to(:dump_pending)    }
    it { is_expected.to respond_to(:passed_display)  }
    it { is_expected.to respond_to(:failed_display)  }
    it { is_expected.to respond_to(:pending_display) }
  end
end
