require 'json'

module LoyaltyProgram
  module Consumers
    def self.watch
      client = LoyaltyProgram::Queue.client

      client.subscribe('purchases', 'recurring') do |on|
        on.message do |channel, msg|
          data = JSON.parse(msg)
          LoyaltyProgram::Logger.log "##{channel}: #{data['msg']}"
        end
      end
    end
  end
end
