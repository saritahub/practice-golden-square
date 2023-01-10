require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
  
  it "Double: Adds tasks to a list" do
    task_list = TaskList.new
    double_task_1 = double(:fake_task, title: 'Walk the dog')
    double_task_2 = double(:fake_task, title: 'Hike')
    task_list.add(double_task_1)
    task_list.add(double_task_2)
    expect(task_list.all).to eq [double_task_1, double_task_2]
  end
end
