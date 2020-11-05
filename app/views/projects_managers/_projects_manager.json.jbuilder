json.extract! projects_manager, :id, :start_date, :end_date, :number_of_changes, :service_type, :project_value, :manager, :allocated_members, :nps_rate, :observations, :created_at, :updated_at
json.url projects_manager_url(projects_manager, format: :json)
