require "relevant/widget"
require 'eventbright'

module Relevant
  class EventbriteSignups
    Version = '0.0.1'
    
    include Relevant::Widget
    
    refresh_every 10.minutes
    
    available_options :user_key => :string, :event_id => :string

    template_format :haml
    template %q[
%h2 Conj Signups
%h3
  = signup_count
:css
  h3 { margin-top: 5px; font-size: 72pt; text-align: center; }]

    def signup_count
      return '?' unless event
      
      event.tickets.map(&:quantity_sold).reduce(:+)
    end
    
    def event
      EventBright::User.new(options[:user_key]).events.detect{|e| e.id == options[:event_id].to_i}
    end

  end
end

Relevant.register Relevant::EventbriteSignups