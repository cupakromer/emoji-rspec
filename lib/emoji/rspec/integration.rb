require 'rspec/core/configuration'

class RSpec::Core::Configuration

  alias_method :built_in_formatter_without_emoji, :built_in_formatter

  def built_in_formatter(key)
    case key.to_s.downcase
    when 'smiles'
      require 'emoji/rspec/formatters/smiles_formatter'
      Emoji::RSpec::Formatters::SmilesFormatter
    when 'zen', 'zen_smiles', 'zensmiles'
      require 'emoji/rspec/formatters/zen_smiles_formatter'
      Emoji::RSpec::Formatters::ZenSmilesFormatter
    when 'hearts', 'life', 'life_hearts', 'lifehearts'
      require 'emoji/rspec/formatters/life_hearts_formatter'
      Emoji::RSpec::Formatters::LifeHeartsFormatter
    when 'thumbs'
      require 'emoji/rspec/formatters/thumbs_formatter'
      Emoji::RSpec::Formatters::ThumbsFormatter
    when 'aggressive_thumbs', 'aggressivethumbs'
      require 'emoji/rspec/formatters/aggressive_thumbs_formatter'
      Emoji::RSpec::Formatters::AggressiveThumbsFormatter
    when 'adventure', 'adventure_time', 'adventuretime'
      require 'emoji/rspec/formatters/adventure_time_formatter'
      Emoji::RSpec::Formatters::AdventureTimeFormatter
    when 'drinking', 'drinking_game', 'drinkinggame'
      require 'emoji/rspec/formatters/drinking_game_formatter'
      Emoji::RSpec::Formatters::DrinkingGameFormatter
    when 'drinking-tea', 'drinking_game_tea', 'drinkingtea', 'drinkinggametea'
      require 'emoji/rspec/formatters/drinking_game_tea_formatter'
      Emoji::RSpec::Formatters::DrinkingGameTeaFormatter
    else
      built_in_formatter_without_emoji(key)
    end
  end

end
