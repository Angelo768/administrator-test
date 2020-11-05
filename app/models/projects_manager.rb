class ProjectsManager < ApplicationRecord
    # after_save :initialize_project_performance

    # def initialize_project_performance
    #     # ProjectsPerformance.create!(project_manager_id: self.id, expected_days: self.end_date - self.start_date, phase_status: "Inicio" )
    #     ProjectsPerformance.new
    # end
    
end
