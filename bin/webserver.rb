
require_relative "../config/config.rb"
require File.expand_path("app/controllers/web")
server = WEBrick::HTTPServer.new(:Port => configatron.port)
server.mount configatron.home, Web

trap("INT") {
  server.shutdown
}

#configure as portas e IP da sua HOST
puts "== http://localhost:#{configatron.port}#{configatron.home}"
server.start
