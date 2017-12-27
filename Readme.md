# Installation Guide

## Install Ruby 2.2

### Windows

- [Installer + Dev Kit](https://rubyinstaller.org/downloads/)

- When you are installing Ruby, make sure to check the checkbox that says `Add Ruby executable to your PATH`

### Mac

- Install [RVM](https://rvm.io/)

- Install and use Ruby 2.2.6 by default

```bash
 $ rvm install 2.2.6

 $ rvm --default use 2.2.6
```

- Verify you have installed and accepted license agreement for command line tools

```bash
xcode-select --install
```

## Chrome and Chrome Driver

- [Chrome](https://www.google.com/chrome/)

### Windows

- [Chrome Driver](https://sites.google.com/a/chromium.org/chromedriver/downloads)
  - Extract and place ChromeDriver.exe in your `Ruby22\bin` directory. This places the executable in your path for you.

### Mac

```bash
brew install chromedriver
```

## Install Bundler

```bash
gem install bundler
```

## Install RubyMine

This is **Optional**
For those who are more comfortable in an IDE

- [Installer](https://www.jetbrains.com/ruby/download/#section=mac)

## Additional Help

This guide uses an **OLDER** version of Ruby, but should be helpful but substituting ruby 2.2.6

[Installation Guide](EnvironmentSetup.pdf)
