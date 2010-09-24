require 'rake'
require File.dirname(__FILE__) + "/lib/relevant/eventbrite_signups.rb"

require 'rspec/core/rake_task'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.version = Relevant::EventbriteSignups::Version
    gemspec.name = "relevant-eventbrite-signups"
    gemspec.summary = "Eventbrite Signup counter for Relevant"
    gemspec.description = "Show how many signups your event has"
    gemspec.email = "opensource@thinkrelevance.com"
    gemspec.homepage = "http://github.com/relevance/relevant-eventbrite-signups"
    gemspec.authors = ["Alan Dipert"]
    gemspec.add_dependency "relevant-widget", "~> 0.0.6"
    gemspec.add_dependency "eventbright", "~> 0.2.3"
    gemspec.add_development_dependency "rspec", "~> 2.0.0.beta.22"
  end
  Jeweler::GemcutterTasks.new
  
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec)
task :default => :spec

task :full_release => [:check_dependencies, :spec, :release]