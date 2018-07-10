class Unicorn

  attr_accessor :name
  attr_accessor :name

  def initialize(name, color = "white")
    @name = name
    @color = color
  end

  def color
    @color
  end

  def white?
    @color == "white"
  end

  def say(message)
    "**;* #{message} **;*"
  end

end
