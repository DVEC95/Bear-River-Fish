class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def bear_hungry()
    return @stomach.size()
  end

  def eat_fish(fish)
    @stomach.push(fish)
  end

end
