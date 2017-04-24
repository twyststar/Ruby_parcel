require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/parcel')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @height = params.fetch('height').to_i
  @width = params.fetch('width').to_i
  @depth = params.fetch('depth').to_i
  @weight = params.fetch('weight').to_i
  @distance = params.fetch('distance').to_i
  @option = params.fetch('option').to_i
  @cost = Parcel.new(@height, @width, @depth, @weight, @distance, @option).cost_to_ship()
  erb(:result)
end
