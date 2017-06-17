require 'thor'

module Wsdirector
  class Cli < Thor
    default_task :start

    desc "start", "run scenario execution"

    method_option :scale, default: '1', aliases: '-s',
    desc: 'Describes how much parallel client-processes will be executed'

    method_option :daemon, type: :boolean, default: false, aliases: '-d',
    desc: 'Running on daemon mode'

    def start
      Wsdirector::Client.new
    end
  end
end
