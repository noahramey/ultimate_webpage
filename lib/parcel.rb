class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
    @volume = @length * @width * @height
  end

  define_method(:volume) do
    @volume
  end

  define_method(:cost) do
    "$" + ('%.02f' % (@volume * @weight)).to_s
  end
end
