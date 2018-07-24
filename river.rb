
class River
  attr_reader :name


  def initialize(name)
    @name = name
    @fish_list = []
  end

  def add_fish(new_fish)
    @fish_list << new_fish
  end

  def count_fish_number()
    return @fish_list.count()
  end

  def remove_fish()
    caught_fish = @fish_list[-1]
    @fish_list.pop()
    return caught_fish
  end



end
