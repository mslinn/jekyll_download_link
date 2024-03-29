# `jekyll_download_link` [![Gem Version](https://badge.fury.io/rb/jekyll_download_link.svg)](https://badge.fury.io/rb/jekyll_download_link)

`jekyll_download_link` is a Jekyll tag plugin that generates a link to the given URI,
which must be a file on the server.
The file name can be absolute or relative to the top-level directory of the website.


## Usage

```html
{% download_link cloud9.tar %}
```

Generates:

```html
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

```shell
$ bundle install
```


## Additional Information

More information is available on
[Mike Slinn&rsquo;s website](https://mslinn.com/jekyll/3000-jekyll-plugins.html#download_link).


## Development

After checking out the repo, run `bin/setup` to install dependencies.

You can also run `bin/console` for an interactive prompt that will allow you to experiment.


### Build and Install Locally

To build and install this gem onto your local machine, type:

```shell
$ bundle exec rake install
jekyll_download_link 1.0.0 built to pkg/jekyll_download_link-0.1.0.gem.
jekyll_download_link (1.0.0) installed.
```

Examine the newly built gem:

```shell
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


## Demo Website

A test/demo website is provided in the `demo` directory.
You can run it under a debugger, or let it run free.

The `demo/_bin/debug` script can set various parameters for the demo.
View the help information with the `-h` option:

```shell
$ demo/_bin/debug -h

debug - Run the demo Jekyll website.

By default the demo Jekyll website runs without restriction under ruby-debug-ide and debase.
View it at http://localhost:4444

Options:
  -h  Show this error message

  -r  Run freely, without a debugger
```


### Debugging the Demo

To run under a debugger, for example Visual Studio Code:

1. Set breakpoints.
2. Initiate a debug session from the command line:

   ```shell
   $ demo/bin/debug
   ```

3. Once the `Fast Debugger` signon appears, launch the Visual Studio Code launch configuration called `Attach rdebug-ide`.
4. View the generated website at [`http://localhost:4444`](http://localhost:4444).


### Build and Push to RubyGems

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

1. Fork the project
2. Create a descriptively named feature branch
3. Add your feature
4. Submit a pull request


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
