require 'net/http'

class GethtmlJob < ApplicationJob
  queue_as :default

  def perform(*args)
    requested_url = URI(args[1])
    result = Net::HTTP.get(requested_url)
    puts result
    job = Job.where(:job_id => args[0])
    job.update(:result => result.force_encoding("UTF-8"))
    job.update(:status => "Complete")
  end

end
