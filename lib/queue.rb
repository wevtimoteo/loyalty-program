require 'redis'

module LoyaltyProgram
  class Queue
    def self.client
      @@client ||= Redis.new
    end
  end
end
