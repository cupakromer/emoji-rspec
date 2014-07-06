require_relative 'rspec_formatter'
require_relative 'formatters'

class RSpec::Core::Formatters::Loader

  alias_method :built_in_formatter_without_emoji, :built_in_formatter

  def built_in_formatter(key)
    key = key.to_s.downcase
    formatter = ::EmojiTestLove::RSpecFormatter
                  .known_formatters
                  .detect { |klass| klass.names.map(&:downcase).include?(key) }
    formatter || built_in_formatter_without_emoji(key)
  end
end
