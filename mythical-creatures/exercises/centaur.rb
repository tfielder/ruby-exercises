class Centaur

attr_reader :name,
            :breed

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @moody = 0
  end

  def shoot
    @moody += 1
    if @moody < 3
      "Twang!!!"
    else
      "NO!"
    end
  end

  def run
    @moody += 1
    if cranky?
      "NO!"
    else
      "Clop clop clop clop!!!"
    end
  end

  def cranky?
    if @moody >= 3
      @cranky = true
    else
      @cranky
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @standing == true
      return "NO!"
    end
    @moody = 0
    @cranky = false
  end

  def lay_down
    @moody = 3
    @standing = false
  end

  def laying?
    !@standing
  end

  def stand_up
    @standing = true
  end

  def drink
    if @standing = false
      @moody = 0
      @cranky = false
    else
      return "No!"
    end
  end


end
