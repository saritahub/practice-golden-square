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
1. Diary
2. DiaryEntry

### **_Contact phone number_**
- Phone numbers exist *within diary entries*, so this will be in Diary
  
### **_ToDo List_**

3. ToDo
4. ToDoList

Class diagrams
```



                                                 ┌─────────────────────────────────────┐
                                                 │  ToDo                               │
                                                 │                                     │
                                                 │  initialize(task)                   │
                                                 │  task                               │
                                                 └──────────────┬──────────────────────┘
                                                                │
                                                                │     Owns a list of
                                                                ▼
    ┌─────────────────────────────────────┐      ┌─────────────────────────────────────┐
    │   Diary                             │      │  ToDoList                           │
    │                                     │      │                                     │
    │   initialize                        │      │  initialize                          │
    │   add(entry)                        │      │  add(task)                          │
    │   all_entries                       │      │  task_list                          │
    │   all_phonenumbers                  │◄─────┤                                     │
    │   extract_phonenumber               │      │                                     │
    │   task_list                         │      │                                     │
    └──────────────┬──────────────────────┘      └─────────────────────────────────────┘
                   │
                   ▼    Owns a list of
    ┌─────────────────────────────────────┐
    │   DiaryEntry                        │
    │                                     │
    │   initialize(title, contents)       │
    │   title                             │
    │   contents                          │
    └─────────────────────────────────────┘

```

CLASS INTERFACE 
```ruby
class Diary 
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


class Diary
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


class ToDo
    def initialize(task)
        #Adds the ToDoList task object
    end 

    def task
        #Returns the task as a string
    end

end 


class ToDoList
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

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# EXAMPLE

# Gets all tracks
library = MusicLibrary.new
track_1 = Track.new("Carte Blanche", "Veracocha")
track_2 = Track.new("Synaesthesia", "The Thrillseekers")
library.add(track_1)
library.add(track_2)
library.all # => [track_1, track_2]
```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby
# EXAMPLE

# Constructs a track
track = Track.new("Carte Blanche", "Veracocha")
track.title # => "Carte Blanche"
```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._
