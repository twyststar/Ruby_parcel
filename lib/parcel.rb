class Parcel
  define_method(:initialize) do |height, width, depth, weight, distance, option|
    @height = height
    @width = width
    @depth = depth
    @weight = weight
    @distance = distance
    @option = option
    @volume = @height*@width*@depth
  end

  define_method(:volume) do
    @volume
  end

  define_method(:volume_weight_cost) do
    if @volume <= 1000
      20 + @weight
    else
      ((@volume/1000)*20)+@weight
    end
  end

  define_method(:distance_cost) do
    if @distance < 50
      5
    else
      ((@distance/50)*5)
    end
  end

  define_method(:option_cost) do
    @option
  end

  define_method(:cost_to_ship) do
    self.option_cost()+self.volume_weight_cost()+self.distance_cost()
  end
end
