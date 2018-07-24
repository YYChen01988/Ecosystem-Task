class Bear
  attr_reader :name, :bear_type


  def initialize(name, bear_type)
    @name = name
    @bear_type = bear_type
    @stomach = []

  end

  def eaten_fish_count()
    return @stomach.count()
  end

  def bear_eats_fish(river)
    if river.count_fish_number() > 0
      dying_fish = river.remove_fish()
      @stomach << dying_fish
    end
  end

  def roar()
    return "Roar~~, I ate the fish <>< "
  end


end
