# Booleans

This gem adds a new method called `Boolean`, analogous to builtins like `Integer` or `String`, which converts
a Ruby value to either `true` or `false` based on its truthiness.

It also has optional core extensions that add a `to_bool` method to all Ruby objects and allow you to check if a value is boolean with `val.is_a?(Boolean)`.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add booleans

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install booleans

## Usage

Once you load the gem, you can use the `Boolean` method to convert objects to `true` or `false`.

```rb
require 'booleans'

Boolean(5)      #=> true
Boolean(0)      #=> true
Boolean("foo")  #=> true
Boolean("")     #=> true
Boolean([])     #=> true
Boolean(nil)    #=> false
Boolean(false)  #=> false
```

All values except `false` and `nil` get converted to `true`.

### Core extensions

There is also an optional file you can load with core extensions.

This adds a new method `to_bool` to all Ruby objects.

```rb
require 'booleans/core_extension'

5.to_bool      #=> true
0.to_bool      #=> true
"foo".to_bool  #=> true
"".to_bool     #=> true
[].to_bool     #=> true
nil.to_bool    #=> false
false.to_bool  #=> false
```

It also includes the `Boolean` module to `TrueClass` and `FalseClass`
which allows you to check if a value is a boolean like this.

```rb
true.is_a?(Boolean)     #=> true
false.is_a?(Boolean)    #=> true
nil.is_a?(Boolean)      #=> false
5.is_a?(Boolean)        #=> false
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Verseth/ruby-booleans.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
