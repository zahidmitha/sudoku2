require 'spec_helper'
require './lib/user'

describe User do

  let(:user) { User.new("Test Test") }

  context ".new" do
    it "sets name" do
      user.name.should == "Test Test"
    end
  end
end