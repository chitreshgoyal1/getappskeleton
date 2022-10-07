require './lib/common'

require 'rubygems'
require 'open-uri'
require 'yaml'
require 'pry'
require 'uri'

module Getapp
  class Parseyaml
    attr_accessor :common

    def initialize(common: Common.new)
      @common = common
    end

    def read(url)
      puts "Read from yaml url: #{url}"
      data = YAML.load_file url
      data.each do |row|
        common.data = []
        common.data << row['name'] << row['tags'] << row['twitter']
        
        common.console_output
      end
    end

  end
end