# encoding: utf-8
require 'emoji-rspec'

describe Emoji::RSpec::Formatters::LifeHeartsFormatter do

  let(:output) { StringIO.new }
  let(:formatter) { Emoji::RSpec::Formatters::LifeHeartsFormatter.new(output) }
  let(:example) { double "example 1" }

  describe "custom_colors" do
    it "uses the custom success color" do
      RSpec.configure do |config|
        config.color_enabled = true
        config.tty = true
        config.success_color = :cyan
      end

      formatter.example_passed example
      expect(output.string).to include("\e[36m")
    end
  end

  describe "utf8 encoding" do
    it "converts the passing example" do
      formatter.example_passed example
      expect(output.string).to include("💚 ")
    end

    it "converts the failing example" do
      formatter.example_failed example
      expect(output.string).to include("💔 ")
    end

    it "converts the pending example" do
      formatter.example_pending example
      expect(output.string).to include("💛 ")
    end
  end

end
