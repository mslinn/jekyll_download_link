`jekyll_download_link`
[![Gem Version](https://badge.fury.io/rb/jekyll_download_link.svg)](https://badge.fury.io/rb/jekyll_download_link)
===========

`jekyll_download_link` is a Jekyll tag plugin that generates a link to the given URI, which must be a file on the server.
The file name can be absolute or relative to the top-level directory of the web site.


## Usage
```
{% link cloud9.tar %}
```

Generates:

```
<a href="/cloud9.tar"><code>cloud9.tar</code></a> (4.5 KB)
```

Which renders as:<br>
<a href="/cloud9.tar">`cloud9.tar`</a> (4.5 KB)


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll_download_link'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install jekyll_download_link


## Additional Information
More information is available on
[Mike Slinn&rsquo;s website](https://www.mslinn.com/blog/2020/10/03/jekyll-plugins.html).


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

Install development dependencies like this:
```
$ BUNDLE_WITH="development" bundle install
```

To build and install this gem onto your local machine, run:
```shell
$ bundle exec rake install
jekyll_download_link 1.0.0 built to pkg/jekyll_download_link-0.1.0.gem.
jekyll_download_link (1.0.0) installed.

$ gem info jekyll_download_link

*** LOCAL GEMS ***

jekyll_download_link (1.0.0)
    Author: Mike Slinn
    Homepage:
    https://github.com/mslinn/jekyll_download_link
    License: MIT
    Installed at: /home/mslinn/.gems

    Generates Jekyll logger with colored output.
```

To release a new version,
  1. Update the version number in `version.rb`.
  2. Commit all changes to git; if you don't the next step might fail with an unexplainable error message.
  3. Run the following:
     ```shell
     $ bundle exec rake release
     ```
     The above creates a git tag for the version, commits the created tag,
     and pushes the new `.gem` file to [RubyGems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mslinn/jekyll_download_link.


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
