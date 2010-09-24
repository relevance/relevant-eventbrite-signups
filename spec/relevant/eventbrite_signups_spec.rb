require 'spec_helper'

describe Relevant::EventbriteSignups do
  it "gets the right event" do
    widget = Relevant::EventbriteSignups.setup :user_key => 'ABC', :event_id => '12345'
    
    event1 = stub('event1', :id => 55555)
    event2 = stub('event2', :id => 12345)
    fake_user = stub('user', :events => [event1, event2])
    EventBright::User.stubs(:new).with('ABC').returns(fake_user)
    widget.event.should == event2
  end
end