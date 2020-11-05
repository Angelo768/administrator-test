json.extract! projects_performance, :id, :expected_days, :running_days, :phase_status, :number_of_sprints, :accomplished, :created_at, :updated_at
json.url projects_performance_url(projects_performance, format: :json)
