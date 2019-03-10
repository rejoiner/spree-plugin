# SpreeRejoiner

Introduction goes here.

## Installation

1. Add this extension to your Gemfile with this line:
  ```ruby
  gem 'spree_rejoiner', github: 'rejoiner/spree_rejoiner'
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
