#!/usr/bin/env ruby

require 'thor'

require_relative './logger'
require_relative './queue'
require_relative './consumers'

class LoyaltyProgramCLI < Thor
  desc 'hello', 'say hello'
  def hello
    greeting = 'Hello'

    LoyaltyProgram::Logger.log greeting
    greeting
  end

  desc 'server', 'messages and orders watcher'
  def server
    LoyaltyProgram::Logger.log 'Starting server...'
    LoyaltyProgram::Consumers.watch
  end

  def self.exit_on_failure?
    false
  end
end
