#!/usr/bin/env rake
require "bundler/gem_tasks"

require 'rspec/core/rake_task'

desc 'Run specs'
RSpec::Core::RakeTask.new(:spec) do |task|
  task.rspec_opts = '--format doc --require spec_helper'
end

desc 'Default: Run specs.'
task default: :spec
