require_relative './person'

class Student < Person
  def initialize(age, classroom, name = 'Unknown', parent_permission: true)
    super(age, name, parent_permission)
    @classroom = classroom
    classroom.add_student(self)
  end

  attr_accessor :classroom

  def play_hooky()
    '¯(ツ)/¯'
  end
end
