json.extract! job, :id, :job_id, :url, :status, :result, :created_at, :updated_at
json.url job_url(job, format: :json)
