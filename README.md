# Kirillica

## English
This gem make transliteration from kirillica symbols. Now is available a few modes:
* GOST 7.79-2000
* ISO 9 - 1995
* USA Government
* International passport

## Русский

Данный гем предназначен для транслитерации кириллицы. На текущий момент доступны несколько режимов транслитерации.

* ГОСТ 7.79 - 2000
* ISO 9 -1995
* Транслитерации Госдепартамента США
* Транслитерация имен для загранпаспорта РФ

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'kirillica'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kirillica

## Usage

```ruby
Kirillica.translit('Ёлкина Снежана Вячеславовна', :usa_government)
=> "yelkina snezhana vyacheslavovna"

Kirillica.translit('Ёлкина Снежана Вячеславовна', :iso_9)
=> "ёlkina snežana vâčeslavovna"

Kirillica.translit('Ёлкина Снежана Вячеславовна', :gost_2000)
=> "yolkina snezhana vyacheslavovna"

Kirillica.translit('Ёлкина Снежана Вячеславовна', :passport)
=> "elkina snezhana vyacheslavovna"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/kirillica. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Kirillica project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/kirillica/blob/master/CODE_OF_CONDUCT.md).
