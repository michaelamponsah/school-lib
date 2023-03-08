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

  private def is_of_age?()
    return @age >= 18? true : false
  end

  public def can_use_services?()
    if (is_of_age? || @parent_permission)
      return true
    else
      return false
    end
  end

end