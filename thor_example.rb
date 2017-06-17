#!/usr/bin/env ruby

require 'rubygems'
require 'thor'

Dir["./app/**/*.rb"].each {|file| require file }

class WSDirector < Thor
  default_task :start

  desc "start", "run scenario execution"

  method_option :scale, default: '1', aliases: '-s',
  desc: 'Describes how much parallel client-processes will be executed'

  method_option :daemon, type: :boolean, default: false, aliases: '-d',
  desc: 'Running on daemon mode'

  def start

  end
end

ThorExample.start
