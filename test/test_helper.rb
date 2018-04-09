ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../config/environment", __dir__)
require "rails/test_help"
<<<<<<< 810f04884ac6568faf42e65921b20a7e69012cc7

<<<<<<< HEAD
class ActiveSupport < TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
=======
=======
>>>>>>> Finish Chapter 3
class ActiveSupport
  class TestCase
    fixtures :all
  end
<<<<<<< 810f04884ac6568faf42e65921b20a7e69012cc7
>>>>>>> 09d7bfa... Finish Chapter 4
=======
>>>>>>> Finish Chapter 3
end
