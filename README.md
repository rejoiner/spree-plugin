# SpreeRejoiner

Adds JavaScript snippets to your Spree storefront which support [Rejoiner](https://www.rejoiner.com) marketing automation.

## Installation

1. Add this extension to your Gemfile with this line:
  ```ruby
  gem 'spree_rejoiner', '~> 1.0.1'
  ```

2. Install the gem using Bundler:
  ```ruby
  bundle install
  ```

3. Copy & run migrations
  ```ruby
  bundle exec rails g spree_rejoiner:install
  ```

4. Restart your server

  If your server was running, restart it so that it can find the assets properly.

## Configuration

You will need to configure your Site ID in Admin under **Configuration > Rejoiner Settings**.

Optionally, you may configure a Domain which is used to store the Rejoiner Session ID cookie. This is only needed if you wish to share the Session ID between multiple subdomains. Otherwise, this extension will default to using `document.location.hostname`.
