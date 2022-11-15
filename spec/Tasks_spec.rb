require "Tasks"

RSpec.describe Tasks do

  context "add a task and call the display method" do
    it "returns the added task as a string" do
      todo = Tasks.new
      todo.add_task("tidy bed")
      expect(todo.display_tasks).to eq "tidy bed"
    end
  end


  context "adds two tasks and calls the display method" do
    it "returns the two tasks as a string (separated by a comma)" do
      todo = Tasks.new
      todo.add_task("tidy bed")
      todo.add_task("fold laundry")
      expect(todo.display_tasks).to eq "tidy bed, fold laundry"
    end
  end

  context "attempts to add an empty string to list" do
    it "fails" do
      todo = Tasks.new
      expect { todo.add_task("") }.to raise_error "Empty string cannot be added"
    end
  end

end
