require_relative 'config/application'
require_relative 'app/controllers/tasks_controller'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

# TasksController.list

# TasksController.add('eat dinner')
# TasksController.list

# TasksController.completed(5)
# TasksController.list

arg = ARGV

case arg[0]
when "list" then TasksController.list
when "delete" then TasksController.delete(arg[1])
  TasksController.list
when "add" then TasksController.add(arg[1..-1].join(" "))
  TasksController.list
when "completed" then TasksController.completed(arg[1])
  TasksController.list
end