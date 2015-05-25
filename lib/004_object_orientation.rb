class School
  @@school_count = 0
  @@instances = []

  def initialize(name, location, ranking)
    @name = name
    @location = location
    @ranking = ranking
    @students = []
    @instructors = []
    @@school_count += 1
    @@instances.push(self)
  end

  def self.all
    return @@instances
  end

  def self.count
    return @@school_count
  end

  #Return name
  def name
    return @name
  end

  #Return location
  def location
    return @location
  end

  #Return ranking
  def ranking
    return @ranking
  end

  def students
    return @students
  end

  def instructors
    return @instructors
  end

  def self.reset_all
    @@school_count = 0
  end

  def add_student(name, grade, semester)
    @students.push({ :name => name, :grade => grade, :semester => semester})
  end

  def remove_student(name)
    entry = self.students.find do |person|
      person[:name] == name
    end
    self.students.delete(entry)
  end

end

