source 'https://rubygems.org'

gem 'rails', '4.1.5'
gem 'mysql2'
gem 'slim-rails'
gem 'sass-rails', '~> 4.0.3'
gem 'jquery-rails'
gem 'jquery-ui-sass-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer',  platforms: :ruby
gem 'turbolinks'
gem 'jquery-turbolinks'
gem 'nprogress-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

# 検索
gem 'ransack'
gem "twitter"

# ログイン
gem 'devise'
gem 'omniauth'
gem 'omniauth-twitter'

gem 'bootstrap-sass'
gem 'newrelic_rpm'
gem 'unicorn'
gem 'whenever', :require => false
gem 'meta-tags'
gem 'settingslogic'
gem 'kaminari', '~> 0.15.1' # ページネーション

group :development do
  gem 'spring'
  gem 'better_errors'
  gem 'annotate'
  gem "capistrano"
  gem "capistrano-rails"
  gem "capistrano-bundler"
  gem "capistrano-rbenv"
  gem "capistrano3-unicorn"
  gem "bullet"
  # gem 'rack-mini-profiler'
end

group :development, :test do
  gem 'jazz_hands', github: 'nixme/jazz_hands', branch: 'bring-your-own-debugger'
  gem 'pry-byebug'
  gem 'rspec-rails', '~> 3.0.0'
  gem 'factory_girl_rails'
  gem 'spring-commands-rspec'
  gem 'guard-rspec'
  gem 'rb-fsevent'
end

# group :staging, :production do
#   gem 'dalli'
# end

group :test do
  gem 'shoulda-matchers'
end