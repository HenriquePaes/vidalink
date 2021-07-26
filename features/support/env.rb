require 'cucumber'
require_relative 'helper.rb'

AMBIENTE = ENV['AMBIENTE']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

World(Helper)