class Nameable
    def correct_name
      raise NotImplementedError
    end
  end
  
  class Decorator < Nameable
    def initialize(nameable)
      super()
      @nameable = nameable
    end
  
    def correct_name
      @nameable.correct_name
    end
  end
  