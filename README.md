# Homeland::Pm

本 Gem 为 Homeland 添加短消息（小窗私信）功能 —— 一个基于 Rails Engine 实现的论坛社区 Gem。

This gem adds Personal Message service to Homeland -- a new style forum for small communities.

> A new style forum for tiny community as Rails Engine. You can mount this in any of you Rails apps.

## Installation

Add these lines to your application's Gemfile, if they do not already exist:

```ruby
gem 'homeland'
gem 'homeland-pm'
gem 'font-awesome-sass-rails'
gem 'github-markup' # 如果你用其他 markup 可以不用依赖 github-markup
```

And then execute:

    $ bundle

Then execute,

    $ bundle exec rails generate homeland:pm:install

Finally, migrate the database,

    $ bundle exec rake db:migrate

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/pmq20/homeland-pm. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

