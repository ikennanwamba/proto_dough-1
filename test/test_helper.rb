ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "mocha/mini_test"
require "minitest/autorun"
require "minitest/spec"

# Improved Minitest output (color and progress bar)
require "minitest/reporters"
Minitest::Reporters.use!(
	Minitest::Reporters::ProgressReporter.new,
	ENV,
	Minitest.backtrace_filter)

# Capybara and poltergeist integration
require "capybara/rails"
require "capybara/poltergeist"
Capybara.javascript_driver = :poltergeist

class ActiveSupport::TestCase
	fixtures :all
	extend Minitest::Spec::DSL

	register_spec_type self do |desc|
		desc < ActiveRecord::Base if desc.is_a? Class
	end
end

class ActionDispatch::IntegrationTest
	include Capybara::DSL
end

# see: https://gist.github.com/mperham/3049152
class ActiveRecord::Base
	mattr_accessor :shared_connection
	@@shared_connection = nil

	def self.connection
		@@shared_connection || ConnectionPool::Wrapper.new(:size => 1){ retrieve_connection }
	end
end
ActiveRecord::Base.shared_connection = ActiveRecord::Base.connection

