#!/usr/bin/env rake

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new :spec

desc 'Build and copy Qunit assets from submodules into vendor/assets'
task :assets => ['assets:build', 'assets:copy']

namespace :assets do
  task :build do
    sh 'git submodule update --init' unless File.exist?('qunit/package.json') || File.exists?('pavlov/pavlov.js')
  end

  task :copy do
    sh 'git submodule update --init' unless File.exist?('qunit/package.json') || File.exists?('pavlov/pavlov.js')
    sh 'cd qunit && git checkout v1.11.0'
    mkdir_p 'vendor/assets/javascripts'
    mkdir_p 'vendor/assets/stylesheets'
    cp 'qunit/qunit/qunit.js',  'vendor/assets/javascripts/'
    cp 'qunit/qunit/qunit.css', 'vendor/assets/stylesheets/'
    cp 'pavlov/pavlov.js', 'vendor/assets/javascripts'
  end
end

task :default => :spec

task :server do
  sh 'rackup -p 3500 config.ru'
end
