class Medusa

  attr_reader :statues,
              :name

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned = true
    if @statues.count == 3
      @statues.shift
      @statues << victim
    else
      @statues << victim
    end
  end

end

class Person

  attr_reader :name
  attr_accessor :stoned

  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    @stoned
  end

end
