# Emoji-RSpec

[![Build Status](https://secure.travis-ci.org/cupakromer/emoji-rspec.png?branch=master)](http://travis-ci.org/cupakromer/emoji-rspec) [![Dependency Status](https://gemnasium.com/cupakromer/emoji-rspec.png?travis)](https://gemnasium.com/cupakromer/emoji-rspec) [![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/cupakromer/emoji-rspec)

A set of emoji based RSpec formatters for use with test output.

## Installation

Add this line to your application's Gemfile:

    group :test do
      gem 'emoji-rspec'
    end

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install emoji-rspec

If you want to always have it included, add it to the top of your `.rspec` file:

    # .rspec
    --require emoji-rspec

## Usage

If not using the `.rspec` file method, you will need to manually include
`emoji-rspec` on the command line when you call `rspec`:

    $ rspec --require emoji-rspec --format smiles

## Formatters

### Smiles

> Pass: :blush:

> Fail: :rage:

> Pending: :grimacing:

This can be used with the following `--format` names:

* `smiles`
* `Emoji::RSpec::Formatters::SmilesFormatter`

### Life Hearts

> Pass: :green_heart:

> Fail: :broken_heart:

> Pending: :yellow_heart:

This can be used with the following `--format` names:

* `hearts`
* `life`
* `life_hearts`
* `lifehearts`
* `Emoji::RSpec::Formatters::LifeHeartsFormatter`

### Thumbs

> Pass: :thumbsup:

> Fail: :thumbsdown:

> Pending: :hand:

This can be used with the following `--format` names:

* `thumbs`
* `Emoji::RSpec::Formatters::ThumbsFormatter`

### Zen Smiles

> Pass: :expressionless:

> Fail: :disappointed:

> Pending: :pensive:

This can be used with the following `--format` names:

* `zen`
* `zen_smiles`
* `zensmiles`
* `Emoji::RSpec::Formatters::ZenSmilesFormatter`

### Aggressive Thumbs

> Pass: :ok_hand:

> Fail: :facepunch:

> Pending: :fist:

This can be used with the following `--format` names:

* `aggressive_thumbs`
* `aggressivethumbs`
* `Emoji::RSpec::Formatters::AggressiveThumbsFormatter`

### Drinking Game

Ever have that late night coding session? Now you can do it in style.

This is the one time that we do not advise you write failing tests first!

Also we advise that you turn on fail fast during these sessions:

    ```ruby
    RSpec.configure {|c| c.fail_fast = true}
    ```

> Pass: :coffee:

> Fail: :cocktail:  _(gulp of a mixed drink or a shot)_

> Pending: :beer:  _(gulp of beer)_


This can be used with the following `--format` names:

* `drinking`
* `drinking_game`
* `drinkingame`
* `Emoji::RSpec::Formatters::DrinkingGameFormatter`

If coffee isn't your thing, there is a tea version too.

> Pass: :tea:

> Fail: :cocktail:  _(gulp of a mixed drink or a shot)_

> Pending: :beer:  _(gulp of beer)_

This can be used with the following `--format` names:

* `drinking-tea`
* `drinkingtea`
* `drinking_game_tea`
* `drinkinggametea`
* `Emoji::RSpec::Formatters::DrinkingGameTeaFormatter`

### Adventure Time

_**WARNING**: This is crazy, but then that's the idea if you've seen the show.
You take full responsibility for any insanity caused by this formatter._

> Pass: :sparkling_heart: :star: :star2: :dizzy: :sparkles: :princess: :person_with_blond_hair: :dog2: :gift_heart:

> Fail: :imp: :smiling_imp: :anger: :boom: :japanese_ogre: :japanese_goblin: :poop: :dragon_face:

> Pending: :alien: :iphone: :pill: :game_die: :school_satchel: :penguin: :flashlight: :space_invader:

This can be used with the following `--format` names:

* `adventure`
* `adventure_time`
* `adventuretime`
* `Emoji::RSpec::Formatters::AdventureTimeFormatter`

## Bugs, Issues, and Suggestions

Please submit them here https://github.com/cupakromer/emoji-rspec/issues

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright / License

Copyright (c) 2012 Aaron Kromer, released under the MIT License.

See [LICENSE](https://github.com/cupakromer/emoji-rspec/blob/master/LICENSE)
for details.
