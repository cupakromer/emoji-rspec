shared_examples "an Emoji Test Love Formatter" do

  describe "class" do
    subject { described_class }

    it { should respond_to :names }
  end

  describe "instance" do
    subject { described_class.new(StringIO.new) }

    it { should respond_to :example_passed  }
    it { should respond_to :example_failed  }
    it { should respond_to :example_pending }
    it { should respond_to :dump_summary    }
    it { should respond_to :dump_failures   }
    it { should respond_to :dump_pending    }
    it { should respond_to :passed_display  }
    it { should respond_to :failed_display  }
    it { should respond_to :pending_display }
  end
end
