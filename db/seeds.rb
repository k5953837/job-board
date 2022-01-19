100.times do
  Job.create(company: Faker::Company.name, position: Faker::Company.profession)
end
