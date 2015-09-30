require 'expansions'
require 'fileutils'
require 'thor'
require_relative 'user_profile'

include UserProfile

def delayed
  Configatron::Delayed.new do
    yield
  end
end
