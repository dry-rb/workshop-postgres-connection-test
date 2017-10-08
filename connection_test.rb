require "bundler/setup"
require "rom"
require "rom/sql"

require "irb"

DATABASE_URL = "postgres://localhost/dry_rb_workshop_connection_test"

config = ROM::Configuration.new(:sql, DATABASE_URL)
rom = ROM.container(config)

_result = rom.gateways[:default].connection.execute("SELECT '1'")
puts "Postgres connection confirmed!"
