class CreateProjectsManagers < ActiveRecord::Migration[6.0]
  def change
    create_table :projects_managers do |t|
      t.date :start_date
      t.date :end_date
      t.integer :number_of_changes
      t.string :service_type
      t.string :project_value
      t.string :manager
      t.string :allocated_members
      t.integer :nps_rate
      t.text :observations

      t.timestamps
    end
  end
end
