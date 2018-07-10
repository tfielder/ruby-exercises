class Pirate

  attr_reader :name,
              :job,
              :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = false
    @acts = 0
    @booty = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    @acts += 1
    if @acts >= 3
      @cursed = true
    end
  end

  def rob_ship
    @booty += 100
    true
  end

end
