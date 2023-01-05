# Diary + Tasks Multi-Class Planned Design Recipe

## 1. Describe the Problem
```
    As a user
    So that I can record my experiences
    I want to keep a regular diary

    As a user
    So that I can reflect on my experiences
    I want to read my past diary entries

    As a user
    So that I can reflect on my experiences in my busy day
    I want to select diary entries to read based on how much time I have and my reading speed

    As a user
    So that I can keep track of my tasks
    I want to keep a todo list along with my diary

    As a user
    So that I can keep track of my contacts
    I want to see a list of all of the mobile phone numbers in all my diary entries
```

---

### Nouns
- Diary
- ToDo List
- Contacts (Phone number)
- ---

### Verbs

**_Diary Entry_**
- Make a diary entry
- Read past diary entries
  
**BONUS**
- Select past diary entries (Based on time + reading speed)

**_ToDo List_**
- Add todo list
- View todo list

**_Contact phone number_**
- Add contact phone number
- List contact phone numbers
---
## 2. Design the Class System

Four classes:
### **_Diary Entry_**
1. Journal
2. JournalEntry

### **_Contact phone number_**
- Phone numbers exist *within diary entries*, so this will be in Diary
  
### **_ToDo List_**

3. ToDo
4. ToDoList

Class diagrams
```



                                                 ┌─────────────────────────────────────┐
                                                 │  ToDoTask                               │
                                                 │                                     │
                                                 │  initialize(task)                   │
                                                 │  task                               │
                                                 └──────────────┬──────────────────────┘
                                                                │
                                                                │     Owns a list of
                                                                ▼
    ┌─────────────────────────────────────┐      ┌─────────────────────────────────────┐
    │   Journal                             │      │  ToDoList                           │
    │                                     │      │                                     │
    │   initialize                        │      │  initialize                         |
    │   add(entry)                        │      │  add(task)                          │
    │   all_entries                       │      │  task_list                          │
    │   all_phonenumbers                  │◄─────┤                                     │
    │   extract_phonenumber               │      │                                     │
    │   task_list                         │      │                                     │
    └──────────────┬──────────────────────┘      └─────────────────────────────────────┘
                   │
                   ▼    Owns a list of
    ┌─────────────────────────────────────┐
    │   JournalEntry                        │
    │                                     │
    │   initialize(title, contents)       │
    │   title                             │
    │   contents                          │
    └─────────────────────────────────────┘

```

CLASS INTERFACE 
```ruby
class Journal 
    def initialize 
        #Stores diary entries and a list of phone numbers
    end 

    def add(entry)
        #Adds a diary entry, which can contain a phone number
    end

    def all_entries
        #Returns all entries
    end 

    def extract_phone_numbers
        #Extracts phone number from diary entries
        #Private method?
    end 

    def phone_numbers
        #Prints a list of phone numbers extracted from the diary entries
    end 

    def task_list
        #Returns the task list as an array
    end
end


class JournalEntry
    def initialize(title, contents)
        #Creates an entry with the title and contents
    end 

    def title
        #Returns the title as a string
    end 

    def contents
        #Returns the contents as a string
    end 
end 


class ToDoTask
    def initialize(task)
        #Adds the ToDoList task object
    end 

    def task
        #Returns the task as a string
    end

end 


class TaskList
    def initialize
        #Stores the task list
    end 

    def add(task)
        #Creates a new task, and adds it to the task list
    end

    def task_list
        #Returns task list
    end 
end 

```

## 3. Create Examples as Integration Tests
```ruby
#1 
it 'Creates a diary entry and returns it in an array' do 
    diaryentry = JournalEntry.new('the title', 'the contents')
    diary = Journal.new 
    diary.add(diaryentry)
    expect(diary.all_entries).to eq([diaryentry])
end 

#2
it 'Creates a multiple diary entries and returns them in an array' do 
    diaryentry_1 = JournalEntry.new('the title', 'the contents')
    diaryentry_2 = JournalEntry.new('cat', 'climbed the tree')
    diary = Journal.new 
    diary.add(diaryentry_1)
    diary.add(diaryentry_2)
    expect(diary.all_entries).to eq([diaryentry_1, diaryentry_2])
end 

#3 
it 'Extracts a phone number from the diary entry and returns this in an array' do 
    diaryentry = JournalEntry.new('Phone number included...', 'The phone number is 07000000000')
    diary = Journal.new 
    diary.add(diaryentry)
    diary.extract_phone_numbers
    expect(diary.phone_numbers).to eq(['07000000000'])
end 

#4 
it 'Extracts multiple phone numbers from the diary entries and returns them in an array' do 
    diaryentry_1 = JournalEntry.new('Phone number included...', 'The phone number is 07000000000')
    diaryentry_2 = JournalEntry.new('Another phone number included...', 'The phone number is 07909090909')
    diary = Journal.new 
    diary.add(diaryentry_1)
    diary.add(diaryentry_2)
    diary.extract_phone_numbers
    expect(diary.phone_numbers).to eq(['07000000000', '07909090909'])
end 

#5
it 'Constructs a task and returns this as an array' do 
    todo = ToDoTask.new('Grow veggies')
    todolist = ToDoList.new 
    todolist.add(todo)
    expect(todolist.task_list).to eq([todo])
end 

#6
it 'Constructs multiple tasks and returns them as an array' do 
    todo_1 = ToDoTask.new('Grow veggies')
    todo_2 = ToDoTask.new('Walk')
    todolist = TaskList.new 
    todolist.add(todo_1)
    todolist.add(todo_2)
    expect(todolist.task_list).to eq([todo_1, todo_2])
end 

#7 
it 'Diary returns the task list' do 
    diary = Journal.new 
    todo = ToDoTask.new('Grow veggies')
    todolist = TaskList.new 
    todolist.add(todo)
    expect(diary.task_list).to eq([todo])
end 

#8
it 'Diary returns the task list with multiple items' do 
    diary = Journal.new 
    todo_1 = ToDoTask.new('Grow veggies')
    todo_2 = ToDoTask.new('Run')
    todolist = TaskList.new 
    todolist.add(todo_1)
    todolist.add(todo_2)
    expect(diary.task_list).to eq([todo_1, todo_2])
end 

# EDGE CASES
#1
it 'Ignores numbers less than 11 numbers long the diary entries' do 
    diaryentry_1 = JournalEntry.new('Phone number included...', 'The phone number is 07000000000')
    diaryentry_2 = JournalEntry.new('False phone number included...', 'The phone number is 0790')
    diary = Diary.new 
    diary.add(diaryentry_1)
    diary.add(diaryentry_2)
    diary.extract_phone_numbers
    expect(diary.phone_numbers).to eq(['07000000000'])
end 

#2
it 'Ignores numbers more than 11 numbers long the diary entries' do 
    diaryentry_1 = JournalEntry.new('Phone number included...', 'The phone number is 07000000000')
    diaryentry_2 = JournalEntry.new('False phone number included...', 'The phone number is 0790909090992313')
    diary = Journal.new 
    diary.add(diaryentry_1)
    diary.add(diaryentry_2)
    diary.extract_phone_numbers
    expect(diary.phone_numbers).to eq(['07000000000'])
end 

#3 
it 'Prompts to add a phone number if no numbers in diary entry' do 
    diaryentry = JournalEntry.new('False phone number included...', 'The phone number is 0790909090992313')
    diary = Journal.new 
    diary.add(diaryentry)
    expect {diary.phone_numbers}.to eq 'No phone numbers present in your diary entries!'
end 

#4
it 'Prompts to add a task if task list empty' do 
    todolist = TaskList.new 
    expect{todolist.task_list}.to raise_error 'No tasks added!'
end



```

## 4. Create Examples as Unit Tests
```ruby
#1
it 'Constructs a diary entry and returns this as a string' do 
    diaryentry = JournalEntry.new('the title', 'the contents')
    expect(diaryentry.title).to eq('the title')
    expect(diaryentry.contents).to eq('the contents')
end 

#2
it 'Constructs a task and returns this as a string' do 
    todo = ToDoTask.new('Eat veggies')
    expect(todo.task).to eq('Eat veggies')
end 

#EDGE CASES
#1 
it 'Prompts for a string input for the diary entry title' do 
    expect { diaryentry = JournalEntry.new(123, 'contents')}.to raise_error 'Please enter a string with 1 or more characters for the title'
end 

#2
it 'Prompts for a string input for the diary entry contents' do 
    expect { diaryentry = JournalEntry.new('the title', 123)}.to raise_error 'Please enter a string with 1 or more characters for the contents'
end 

#3
it 'Prompts for a longer input if the diary entry title is empty' do 
    expect { diaryentry = JournalEntry.new('', 'contents')}.to raise_error 'Please enter a string with 1 or more characters for the title'
end 

#4
it 'Prompts for a longer input if the diary entry contents is empty' do 
    expect { diaryentry = JournalEntry.new('the title', '')}.to raise_error 'Please enter a string with 1 or more characters for the contents'
end 

#5 
it 'Prompts for a string input for the todo task' do 
    expect { todo = ToDoTask.new(123)}.to raise_error 'Please enter a string with 1 or more characters for the task'
end

#6
it 'Prompts for a longer input if the task is empty' do 
    expect { todo = ToDoTask.new('')}.to raise_error 'Please enter a string with 1 or more characters for the task'
end 
    
```