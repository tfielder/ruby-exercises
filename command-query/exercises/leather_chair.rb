class LeatherChair
  attr_accessor :faded

  def initialize
    @faded = false
  end

  def faded?
    if @faded == false
      return "New chairs are NOT faded."
    else
      return "Exposed chairs are faded."
    end
  end

  def expose_to_sunlight
    @faded = true
  end

end
