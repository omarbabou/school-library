class Person
    def initialize(age, name = 'Unknown', parent_permission: false)
      @id = Random.rand(1..1000)
      @name = name
      @age = age
      @parent_permission = parent_permission
    end
  
    attr_reader :id
    attr_accessor :name, :age
  
    def of_age?
      @age >= 18
    end
  
    private :is_of_age?
  
    def can_use_services?
      is_of_age || @parent_permission
    end
  end