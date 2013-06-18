# Emoji-RSpec

[![Gem Version](https://badge.fury.io/rb/emoji-rspec.png)](http://badge.fury.io/rb/emoji-rspec)
[![Build Status](https://secure.travis-ci.org/cupakromer/emoji-rspec.png?branch=master)](http://travis-ci.org/cupakromer/emoji-rspec)
[![Dependency Status](https://gemnasium.com/cupakromer/emoji-rspec.png?travis)](https://gemnasium.com/cupakromer/emoji-rspec)
[![Code Climate](https://codeclimate.com/github/cupakromer/emoji-rspec.png)](https://codeclimate.com/github/cupakromer/emoji-rspec)
[![Coverage Status](https://coveralls.io/repos/cupakromer/emoji-rspec/badge.png)](https://coveralls.io/r/cupakromer/emoji-rspec)

A set of emoji based RSpec formatters for use with test output.

## Installation

**Note**: Stuck on Ruby 1.8.7? :grimacing: See [0.x version](#0x) end of life note.

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

### [Adventure Time](http://en.wikipedia.org/wiki/Adventure_Time)

![Adventure Time with Finn & Jake](http://upload.wikimedia.org/wikipedia/en/thumb/3/37/Adventure_Time_-_Title_card.png/250px-Adventure_Time_-_Title_card.png)

_**WARNING**: This is crazy, but then that's the idea if you've seen the show.
You take full responsibility for any insanity caused by this formatter._

> Pass: :sparkling_heart: :star: :star2: :dizzy: :sparkles: :princess: :person_with_blond_hair: :dog2: :gift_heart:

> Fail: :imp: :smiling_imp: :anger: :boom: :japanese_ogre: :japanese_goblin: :poop: :dragon_face:

> Pending: :alien: :iphone: :pill: :game_die: :school_satchel: :penguin: :flashlight: :space_invader:

This can be used with the following `--format` names:

* `adventure`
* `adventure_time`
* `adventuretime`
* `EmojiTestLove::AdventureTimeFormatter`

### Aggressive Thumbs

_See also [Thumbs](#thumbs)_

> Pass: :ok_hand:

> Fail: :facepunch:

> Pending: :fist:

This can be used with the following `--format` names:

* `aggressive_thumbs`
* `aggressivethumbs`
* `EmojiTestLove::AggressiveThumbsFormatter`

### Books

> Pass: :green_book:

> Fail: :closed_book:

> Pending: :orange_book:

This can be used with the following `--format` names:

* `books`
* `reading_rainbow`
* `EmojiTestLove::BooksFormatter`

### Celebrate

Similar to [Kanpai](#kanpai) and [Drinking Game](#drinking-game). Here you get
to celebrate your hard work when your tests pass. Have a :beer: and cheers with
friends :beers:.

> Pass: :beers: _(cheers with friends / pair programmer)_

> Fail: :coffee: _(oops maybe too many :beer:, have some coffee)_

> Pending: :pizza: _(still work to do, have some nom noms)_

This can be used with the following `--format` names:

* `celebrate`
* `celebration`
* `cheers`
* `EmojiTestLove::CelebrateFormatter`

### Drinking Game

_See also [Celebrate](#celebrate) and [Kanpai](#kanpai)_

Ever have that late night coding session? Now you can do it in style.

This is the one time that we do not advise you write failing tests first!

Also we advise that you turn on fail fast during these sessions:

```ruby
RSpec.configure{ |c| c.fail_fast = true }
```

Or if you prefer the command line persuasion: `--fail-fast`

Now without further delay

> Pass: :coffee:

> Fail: :cocktail:  _(gulp of a mixed drink or a shot)_

> Pending: :beer:  _(gulp of beer)_


This can be used with the following `--format` names:

* `drinking`
* `drinking_game`
* `drinkingame`
* `EmojiTestLove::DrinkingGameFormatter`

If coffee isn't your thing, there is a tea version too.

> Pass: :tea:

> Fail: :cocktail:  _(gulp of a mixed drink or a shot)_

> Pending: :beer:  _(gulp of beer)_

This can be used with the following `--format` names:

* `drinking_tea`
* `drinkingtea`
* `drinking_game_tea`
* `drinkinggametea`
* `EmojiTestLove::DrinkingGameTeaFormatter`

### Fruit

> Pass: :green_apple:

> Fail: :tomato:

> Pending: :lemon:

This can be used with the following `--format` names:

* `apples`
* `fruit`
* `EmojiTestLove::FruitFormatter`

### [Kanpai](http://en.wikipedia.org/wiki/Toast_%28honor%29)

Similar to [Celebrate](#celebrate) and [Drinking Game](#drinking-game). Here
you get to celebrate your hard work when your tests pass. So lift some :sake:
and [_'Kanpai!'_](http://en.wikipedia.org/wiki/Toast_%28honor%29).

> Pass: :sake: _("Kanpai!" with friends / pair programmer)_

> Fail: :tea: _(oops maybe too much :sake:, have some green tea)_

> Pending: :sushi: _(still work to do, have some nom noms)_

This can be used with the following `--format` names:

* `kanpai`
* `乾杯`
* `EmojiTestLove::KanpaiFormatter`

### Life Hearts

> Pass: :green_heart:

> Fail: :broken_heart:

> Pending: :yellow_heart:

This can be used with the following `--format` names:

* `hearts`
* `life`
* `life_hearts`
* `lifehearts`
* `EmojiTestLove::LifeHeartsFormatter`

### Lucky

> Pass: :four_leaf_clover:

> Fail: :mushroom:

> Pending: :chestnut:

This can be used with the following `--format` names:

* `lucky`
* `EmojiTestLove::LuckyFormatter`

### [Omkase](http://en.wikipedia.org/wiki/Omakase)

I wish Apple had more emoji to make this one a bit more interesting.

> Pass: :dango:

> Fail: :rice_cracker:

> Pending: :fish_cake:

This can be used with the following `--format` names:

* `omkase`
* `お任せ`
* `EmojiTestLove::OmkaseFormatter`

### Smile Dip

> Pass: :lollipop:

> Fail: :ghost:

> Pending: :dolphin: _([aoshima](http://gravityfalls.wikia.com/wiki/Aoshima))_
>
> ![Mabel riding Aoshima](http://images1.wikia.nocookie.net/__cb20120719190961/gravityfalls/images/thumb/b/b5/S1e5_mabel_hallucination.png/258px-S1e5_mabel_hallucination.png)

This can be used with the following `--format` names:

* `smile_dip`
* `smiledip`
* `fun_dip`
* `fundip`
* [`aoshima`](http://gravityfalls.wikia.com/wiki/Aoshima)
* `EmojiTestLove::SmileDipFormatter`

[![Mabel on Smile Dip](http://i.imgur.com/QGwpiOv.png)](http://youtu.be/jngqI1la27o)

### Smiles

> Pass: :blush:

> Fail: :rage:

> Pending: :grimacing:

This can be used with the following `--format` names:

* `smiles`
* `EmojiTestLove::SmileyFacesFormatter`

### Sunshine

> Pass: :sunny:

> Fail: :umbrella:

> Pending: :cloud:

This can be used with the following `--format` names:

* `sunshine`
* `sunny`
* `EmojiTestLove::SunshineFormatter`

### Turtles

> Pass: :turtle:

> Fail: :beetle:

> Pending: :snail:

This can be used with the following `--format` names:

* `turtles`
* [`turtles_all_the_way_down`](http://en.wikipedia.org/wiki/Turtles_all_the_way_down)
* `all_the_way_down`
* `EmojiTestLove::TurtlesFormatter`

### Thumbs

_See also [Aggressive Thumbs](#aggressive-thumbs)_

> Pass: :thumbsup:

> Fail: :thumbsdown:

> Pending: :hand:

This can be used with the following `--format` names:

* `thumbs`
* `EmojiTestLove::ThumbsFormatter`

### [Waddles](http://gravityfalls.wikia.com/wiki/Waddles)

![Waddles](http://images3.wikia.nocookie.net/__cb20120929182860/gravityfalls/images/thumb/1/15/Waddles.png/95px-Waddles.png)

> Pass: :pig:

> Fail: :bug:

> Pending: :seedling:

This can be used with the following `--format` names:

* `waddles`
* `EmojiTestLove::WaddlesFormatter`

[![Waddle's Life](http://i.imgur.com/Ho47uAG.png)](http://youtu.be/0RemaiBFMSY)

### Zen Smiles

> Pass: :expressionless:

> Fail: :disappointed:

> Pending: :pensive:

This can be used with the following `--format` names:

* `zen`
* `zen_smiles`
* `zensmiles`
* `EmojiTestLove::ZenSmilesFormatter`

## Bugs, Issues, and Suggestions

Please submit them here https://github.com/cupakromer/emoji-rspec/issues

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Versions

### 1.x

The current main release. Full support for 2.0.0, with some backwards support
for 1.9.2 and 1.9.3.

### 0.x

This has reached end of life. Further improvements will only be on the 1.x line.
Pull Requests will be welcome on this branch, but new formatters will not be
added. If you submit a PR for this, please maintain 1.8.7 support.

## Copyright / License

Copyright (c) 2012 Aaron Kromer, released under the MIT License.

See [LICENSE](https://github.com/cupakromer/emoji-rspec/blob/master/LICENSE)
for details.
