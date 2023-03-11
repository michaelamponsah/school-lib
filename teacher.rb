require_relative './person'

class Teacher < Person
  attr_reader :type
  attr_accessor :specialization

  def initialize(age, specialization, name = 'Unknown', type = 'Teacher', parent_permission: true)
    super(age, name, parent_permission)
    @specialization = specialization
    @type = type
  end

  def can_use_services?()
    true
  end
end
