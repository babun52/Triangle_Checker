require('sinatra')
require('sinatra/reloader')
require('./lib/triangles')
also_reload('./lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/triangles_output') do
  new_triangle = Triangle.new(params.fetch('side1').to_i,params.fetch('side2').to_i,params.fetch('side3').to_i)
  @triangle = new_triangle.check_triangle()
  erb(:index)
end
