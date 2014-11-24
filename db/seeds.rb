require 'faker'
require_relative '../app/models/task'


10.times do
  my_task = Faker::Lorem.sentence
  tasks = Task.create(description: my_task, completed: false)
end





