require "Tasks"

RSpec.describe Tasks do
  context "add a task and call the display method" do
    it "returns the added task as a string" do
      todo = Tasks.new
      todo.add_task("tidy bed")
      expect(todo.display_tasks).to eq "tidy bed"
    end
  end
end
