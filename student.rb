require_relative './person'

class Student < Person
  attr_accessor :classroom
  attr_reader :type

  def initialize(age, classroom, name, parent_permission, type = 'Student')
    super(age, name, parent_permission)
    @classroom = classroom
    # classroom.add_student(self)
    @type = type
  end

  def play_hooky()
    '¯(ツ)/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.includes?(self)
  end
end
