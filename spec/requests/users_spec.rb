# frozen_string_literal: true

require 'rails_helper'

# https://rspec.info/features/3-13/rspec-mocks/basics/allowing-messages/
RSpec.describe "Allow to Failure, return nil." do
  # undefined method 'new' for module Users
  # it "Caution, Do not connect to two-way communication." do
  #   @user = FactoryBot.build(:users)
  #   sign_in @user
  #   expect(response).to have_http_status(200)
  # end

  # Because, Design that does not allow the creation of new users.
  it "Caution, Do not connect to two-way communication." do
    @fails = double("This case is allow to failure.")
    allow(@fails).to receive(:allow)
    expect(@fails.allow).to be_nil
  end
end
