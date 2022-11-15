class Tasks

  def initialize
    @tasklist = []
  end

  def add_task(task)
    fail "Empty string cannot be added" if task.empty?
    @tasklist << task
  end

  def display_tasks
    @tasklist.join(", ")
  end
end
