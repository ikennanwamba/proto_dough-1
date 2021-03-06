source 'https://rubygems.org'
ruby '2.2.1'

# Standard Rails gems
gem 'rails', '4.2.0'
gem 'sass'
gem 'sass-rails', '5.0.1'
gem 'uglifier', '2.7.1'
gem 'coffee-rails', '4.1.0'
gem 'jquery-rails', '4.0.3'
gem 'turbolinks', '2.5.3'
gem 'jbuilder', '2.2.12'
gem 'bcrypt', '3.1.10'

gem 'nokogiri'

# Necessary for Windows OS (won't install on *nix systems)
gem 'tzinfo-data', platforms: [:mingw, :mswin]

# Kaminari: https://github.com/amatsuda/kaminari
gem 'kaminari', '0.16.3'

# Friendly_id: https://github.com/norman/friendly_id
gem 'friendly_id', '5.1.0'

# Font-awesome: https://github.com/FortAwesome/font-awesome-sass
gem 'font-awesome-sass', '4.3.2.1'

# Bootstrap 3: https://github.com/twbs/bootstrap-sass
gem 'bootstrap-sass', '3.3.4.1'

group :development, :test do
	gem 'better_errors'
	gem 'byebug', '4.0.4'
  gem 'web-console', '2.1.2'

  # Figaro: https://github.com/laserlemon/figaro
  gem 'figaro', '1.1.0'

  # Spring: https://github.com/rails/spring
  gem 'spring', '1.3.3'
end


# SQLite 3
group :development, :test do
  gem 'sqlite3', '1.3.10'
end

group :development do
	gem 'guard', '>= 2.2.2', :require => false
	gem 'guard-minitest', :require => false
	gem 'rb-fsevent', :require => false
	gem 'terminal-notifier-guard', :require => false
end

group :test do
	gem 'capybara'
	gem 'connection_pool'
	gem 'launchy'
	gem 'minitest-reporters'
	gem 'mocha'
	gem 'poltergeist'
	gem 'shoulda'
	gem 'test_after_commit'
end
# Devise: https://github.com/plataformatec/devise
gem 'devise', '3.4.1'
