class Person
  attr_reader :id
  attr_accessor :name
  attr_accessor :age

  def initialize( age, name="Unknown", parent_permission=true)
    @id = id
    @name = name
    @age = age
    # @parent_permission = parent_permission
  end

  
end