#!/usr/bin/env ruby

require 'json'
require 'open-uri'

fail 'Usage: listRepositories.rb user_or_organization' unless ARGV.length == 1

user=ARGV[0]
uri="https://api.github.com/users/#{user}/repos"

file = open(uri)
res = file.read
res = JSON.parse(res)

res.map do |s|
  puts s['ssh_url']
end
