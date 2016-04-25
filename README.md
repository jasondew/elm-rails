# Elm on Rails

**CAUTION** This is a very early version and probably isn't ready for use in production yet!

This gem adds support for compiling Elm source files via Sprockets. /ht @rtfeldman for the initial version (found [here](https://gist.github.com/rtfeldman/db7b121100b6c6ff435b))

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'elm-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install elm-rails

## Usage

Just require an Elm file in your JavaScript via require.  For example, given you
have an Elm directory at `app/assets/javascripts/widget` with an `App.elm`, you
can define a JavaScript file as such:

```javascript
//= require "widget/App"

var widget = Elm.embed(Elm.App, document.getElementById("widget"));
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jasondew/elm-rails. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
