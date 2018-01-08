# Setup Check

## Install Bundler

```bash
gem install bundler
```
- Make sure your ruby installation is in your PATH env variable.

## Use bundler

- Create a new directory

```bash
~: mkdir AdoptAPuppy
```

- Add a Gemfile to that directory

```bash
~: cd AdoptAPuppy
~/AdoptAPuppy: touch Gemfile
```

Using your favorite text editior or rubymine:

```ruby
source 'https://rubygems.org'

gem 'watir'
```

- Use Bundler to install the dependencies

```bash
~/AdoptAPuppy: bundle install
```
