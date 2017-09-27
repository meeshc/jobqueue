require 'net/http'
require 'nokogiri'
require 'open-uri'
require 'rubygems'

class GethtmlJob < ApplicationJob
  queue_as :default

  def perform(*args)
    requested_url = URI(args[1])
    #result = Net::HTTP.get(requested_url)
    result = Nokogiri::HTML(open(requested_url))
    text  = result.at('body').inner_text
    #words = text.scan(/\w+/)
    #p words.length, words.uniq.length, words.uniq.sort[0..8]
    words = text.scan(/[a-z]+/i)
    #p words.length, words.uniq.length, words.uniq.sort[0..5]
    
    puts words
	job = Job.where(:job_id => args[0])
	job.update(:result => words)
	job.update(:status => "Complete")
	end

end
