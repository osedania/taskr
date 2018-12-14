source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = '#{repo_name}/#{repo_name}' unless repo_name.include?('/')
  'https://github.com/#{repo_name}.git'
end

gem 'aws-sdk'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'haml-rails', '~> 0.9'
gem 'jbuilder', '~> 2.5'
gem 'paperclip'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.1'
gem 'sass-rails', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'
gem 'stripe'
gem 'font-awesome-rails'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'jquery-rails'


source 'https://service.tc.nexus:Fg5a9Q4WzK@nexus.devfactory.com/repository/myalerts-release-gem' do
  gem 'trackif_microservices', '1.6.0'
  gem 'log-streamer', '~> 0.0.19'
end


group :development, :test do
  gem 'coveralls', require: false
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'guard-rails', require: false
  gem 'launchy'
  gem 'pry-byebug'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
