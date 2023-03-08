class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def is_of_age?()
    @age >= 18
  end

  def can_use_services?()
    return true if is_of_age? || @parent_permission


    false
  end
end
