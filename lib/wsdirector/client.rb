require 'websocket-client-simple'

module Wsdirector
  class Client
    def initialize
      ws = WebSocket::Client::Simple.connect 'ws://localhost:8080'

      ws.on :message do |msg|
        puts msg.data
      end

      ws.on :open do
        ws.send 'hello!!!'
      end

      ws.on :close do |e|
        p e
        exit 1
      end

      ws.on :error do |e|
        p e
      end

      loop do
        ws.send STDIN.gets.strip
      end
    end
  end
end
