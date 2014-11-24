require_relative '../../config/application'
require_relative '../models/task'

class TasksController
  def self.list
    # if Task.empty
    #   puts "Nothing to do here. Enjoy your day!"
    # else
    #   puts "TO DO LIST:"
      Task.all.each do |t|
        if t.completed? == true
          puts "#{t.id}. [x] #{t.description}"
        else
          puts "#{t.id}. [ ] #{t.description}"
        end
      end
    # end
  end

  def self.add(my_task)
    Task.create(description: my_task, completed: false)
  end

  def self.delete(id)
    Task.destroy(id)
  end

  def self.completed(id)
    t = Task.find(id)
    t.completed = true
    t.save
  end


end



