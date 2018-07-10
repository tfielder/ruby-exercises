class Dragon

attr_reader :name
attr_reader :color
attr_reader :rider
attr_reader :hungry

def initialize(name, color, rider)
  @name = name
  @color = color
  @rider = rider
  @hungry = true
  @times_ate = 0
end

def hungry?
  @hungry
end

def eat  #return to me
    @times_ate += 1
    if @times_ate >= 3
      @hungry = false
    end
end

end
