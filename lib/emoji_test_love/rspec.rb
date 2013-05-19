require 'rspec/core/configuration'
require_relative 'rspec/rspec_integration'

Dir[File.join(File.dirname(__FILE__), 'formatters', '*.rb')].each do |file|
  require file
end

class RSpec::Core::Configuration

  alias_method :built_in_formatter_without_emoji, :built_in_formatter

  def built_in_formatter(key)
    key = key.to_s.downcase
    formatter = ::EmojiTestLove::RSpecIntegration
                  .known_formatters
                  .detect{|klass| klass.names.map(&:downcase).include? key }
    formatter || built_in_formatter_without_emoji(key)
  end

end
