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

  it "Double: Adds tasks to a list" do
    task_list = TaskList.new
    double_task_1 = double(:fake_task, title: 'Walk the dog')
    double_task_2 = double(:fake_task, title: 'Hike')
    task_list.add(double_task_1)
    task_list.add(double_task_2)
    expect(task_list.all).to eq [double_task_1, double_task_2]
  end

  it "Double: Marks tasks as complete" do
    task_list = TaskList.new
    double_task_1 = double(:fake_task, title: 'Walk the dog', mark_complete: true)
    double_task_2 = double(:fake_task, title: 'Hike', mark_complete: true)
    task_list.add(double_task_1)
    task_list.add(double_task_2)
    expect(double_task_1).to receive(:complete?).and_return(true)
    expect(double_task_2).to receive(:complete?).and_return(true)
    expect(task_list.all_complete?).to eq true
  end
end
