# WechatTemplateContentParser

[![Build Status](https://travis-ci.org/vkill/wechat_template_content_parser.svg?branch=master)](https://travis-ci.org/vkill/wechat_template_content_parser)

This gem trying to helping Ruby developer to parse and fill wechat template content easily.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'wechat_template_content_parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wechat_template_content_parser

## Usage

```ruby
require 'wechat_template_content_parser'

content = "The time: {{time.DATA}}\nThe location: {{location.DATA}}"
WechatTemplateContentParser.parse(content) # => [:time, :location]

content = "The time: {{time.DATA}}\nThe location: {{location.DATA}}"
data_hash = {time: 'Jan 1 , 2016', location: 'Square'}
WechatTemplateContentParser.fill(content, data_hash) # => "The time: Jan 1 , 2016\nThe location: Square"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vkill/wechat_template_content_parser. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

