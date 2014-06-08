<<<<<<< HEAD
ENV['RAILS_ENV'] ||= 'test'
=======
ENV["RAILS_ENV"] = "test"
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
<<<<<<< HEAD
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
=======
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
>>>>>>> 0924e6b2a4d911eb469e16ffd3328e7eb41eebf8
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
