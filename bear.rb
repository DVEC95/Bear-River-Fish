class Bear

  attr_reader :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def roar
    return "#{@name} lets out a roar!"
  end

  def bear_hungry()
    return @stomach.size()
  end

  def eat_fish(river)
    fish = river.bear_eat_fish
    @stomach << fish
  end

end
