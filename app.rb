require('sinatra')
require('sinatra/reloader')
require('./lib/myhash')
require('./lib/triangle')
require('./lib/parcel')

get('/') do
  erb(:index)
end

get('/triangle') do
  @test = "triangle"
  @side1 = params.fetch('side1').to_i
  @side2 = params.fetch('side2').to_i
  @side3 = params.fetch('side3').to_i
  @triangle_results = Triangle.new(@side1, @side2, @side3).type()
  erb(:index)
end

get('/parcel') do
  @test = "parcel"
  @length = params.fetch('length').to_i
  @width = params.fetch('width').to_i
  @height = params.fetch('height').to_i
  @weight = params.fetch('weight').to_i
  @parcel_results = Parcel.new(@length, @width, @height, @weight).cost()
  erb(:index)
end

get('/hash') do
  @test = "hash"
  @key1 = params.fetch('key1')
  @value1 = params.fetch('value1')
  @key2 = params.fetch('key2')
  @value2 = params.fetch('value2')
  @key3 = params.fetch('key3')
  @value3 = params.fetch('value3')
  @key4 = params.fetch('key4')
  @value4 = params.fetch('value4')
  @full_hash1 = MyHash.new()
  @full_hash1.store(@key1, @value1)
  @full_hash1.store(@key2, @value2)
  @full_hash2 = MyHash.new()
  @full_hash2.store(@key3, @value3)
  @full_hash2.store(@key4, @value4)

  @merged_hash = @full_hash1.merge(@full_hash2)
  erb(:index)
end
