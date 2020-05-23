# flux_base
A Rails engine providing sensible default gems and helpers for new applications.

## Notable Features
- [rails_semantic_logger](https://github.com/rocketjob/rails_semantic_logger)
- [slim-rails](https://github.com/slim-template/slim-rails)
- [whenever](https://github.com/javan/whenever)
- View helpers for [Bulma](https://bulma.io/) - just include `FluxBase::BulmaHelpers`
- Miscellaneous view helpers - just include `FluxBase::ApplicationHelper`

## Installation
Create a new Rails application. Remove all default dependencies from your Gemfile and add the line:
```ruby
gem 'flux_base'
```

Then execute:
```bash
$ bundle
```

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/lucis-fluxum/flux_base.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
