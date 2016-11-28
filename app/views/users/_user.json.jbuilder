json.extract! user, :id, :first_name, :last_name, :job_title, :job_assignment, :created_at, :updated_at, :supervisorEmail
json.url user_url(user, format: :json)