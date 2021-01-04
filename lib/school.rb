# class School
#     attr_reader :name
#     def initialize(name)
#         @name = name
#     end
# end

class School
    def initialize(name)
      @name = name
      @roster = {} # starts off as empty hash upon initialization
    end
  
    def roster # getter/reader for roster
      @roster
    end
  
    def add_student(name, grade) # name and grade level
      if @roster[grade] != nil # if roster grade level key is not empty
        @roster[grade] << name # shovels hash value name into roster hash key grade
      else
        @roster[grade] = [name] # if grade level is empty, grade will be the name
      end
    end
    # is able to add a student
    # is able to add multiple students to a class (grade)
    # is able to add students to different grades
  
    def grade(grade)
      @roster[grade] # grade level is a key
    end
    #  is able to retreive students from a grade level
  
    def sort
      @roster.each do |key, value| # key is grade and value is student
        value.sort! # .sort! quicksort algorithm (! is in place) for students
      end
    end
    # is able to sort the students
  end 