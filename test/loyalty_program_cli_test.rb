require 'test_helper'

require_relative '../lib/loyalty_program_cli'

describe LoyaltyProgramCLI do
  it 'says hello' do
    assert_equal 'Hello', LoyaltyProgramCLI.new.hello
  end
end
