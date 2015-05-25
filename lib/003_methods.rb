# code you methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope

puts "Reading lib file"

def get_grade(school, student)
  get_student = school[:students].find do |person|
    person[:name] == student
  end
  return get_student[:grade]
end

def update_subject(school, instructor, subject)
  instructors_num = school[:instructors].index{ |instructor_hash| instructor_hash[:name] == instructor }
  school[:instructors][instructors_num][:subject] = subject
end

def add_new_student(school, student)
  school[:students].push({:name => student})
end

def add_new_key(school, key, value)
  school[key] = value
end