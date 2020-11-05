class CreateProjectsPerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :projects_performances do |t|
      t.integer :expected_days
      t.integer :running_days
      t.string :phase_status
      t.integer :number_of_sprints
      t.integer :accomplished

      t.timestamps
    end
  end
end
