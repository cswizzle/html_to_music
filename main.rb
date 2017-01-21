require_relative "parser"
require "pry"

notes = Parser.new(ARGV[0]).parse