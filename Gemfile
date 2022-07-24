source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem "bootsnap", require: false
gem 'graphql', "~> 1.13.15"
gem "puma", "~> 5.0"
gem "rack-cors"
gem "rails", "~> 7.0.3", ">= 7.0.3.1"
if RUBY_PLATFORM=~ /mingw/
  gem "sqlite3", git: "https://github.com/larskanis/sqlite3-ruby", branch: 'add-gemspec'
else
  gem "sqlite3"
end
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
end

