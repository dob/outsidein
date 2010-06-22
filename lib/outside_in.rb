require 'rubygems'
require 'json'
require 'net/http'

module OutsideIn
  
  ENDPOINT = "http://api.outside.in/radar"
  JSON_ENDPOINT = "#{ENDPOINT}.json"

end

directory = File.expand_path(File.dirname(__FILE__))

require File.join(directory, 'outside_in', 'radar')
require File.join(directory, 'outside_in', 'tweet')
require File.join(directory, 'outside_in', 'place')
require File.join(directory, 'outside_in', 'tag')
require File.join(directory, 'outside_in', 'story')

