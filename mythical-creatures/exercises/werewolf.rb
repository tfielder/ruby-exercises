class Werewolf
  attr_reader :name,
              :location

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human_status = true
    @wolf_status = false
    @change = 0
    @hungry = true
  end

  def human?
    @human_status
  end

  def wolf?
    @wolf_status
  end

  def change!
    @change += 1
    if @change.odd?
      @human_status = false
      @wolf_status = true
      @hungry = true
    else
      @human_status = true
      @wolf_status = false
    end
  end

  def hungry?
    @hungry
  end

  def eat(victim)
    if @wolf_status
      victim.status = :dead
      @hungry = false
    end
  end

end

class Victim
  attr_accessor :status

  def initialize
    @status = :alive
  end
end
