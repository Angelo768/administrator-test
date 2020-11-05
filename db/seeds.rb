# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.find_or_create_by!(name: "Admin", email:"admin@example.com", password:"password", password_confirmation:"password")

20.times do |t|
    ProjectsManager.find_or_create_by!(
        start_date: Faker::Date.backward(days: 14),
        end_date: Faker::Date.backward(days: 14),
        number_of_changes: rand(1..50),
        service_type: Faker::Company.industry,
        project_value: rand(1000..100000),
        manager: Faker::Name.name,
        allocated_members: "#{Faker::Name.name} e #{Faker::Name.name}",
        nps_rate: rand(1..10),
        observations: Faker::Lorem.paragraph(sentence_count: 2)
    )
end

20.times do
    expected_days = rand(20..80)
    running_days = rand(20..60)
    ProjectsPerformance.find_or_create_by!(
        expected_days: expected_days,
        running_days: running_days,
        phase_status: ["Inicio", "Meio", "Fim"],
        number_of_sprints: rand(5..20),
        accomplished: (running_days/expected_days)*100
    )
end