require './lib/common'

require 'rubygems'
require 'open-uri'
require 'json'
require 'pry'
require 'uri'

module Getapp
  class Parsejson
    attr_accessor :common

    def initialize(common: Common.new)
      @common = common
    end

    def read(url)
      data = JSON.load common.file_url(url)
      data["products"].each do |row|
    
        common.data = []
        common.data << row['title'] << row['categories'] << row['twitter']
        
        common.console_output
      end
    end

  end
end