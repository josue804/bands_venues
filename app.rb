ENV['RACK_ENV'] = 'development'
require('sinatra/activerecord')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/band')
require('./lib/venue')
require('./lib/event')
require('pg')
require('pry')

get('/') do
  @bands = Band.all
  @venues = Venue.all
  erb(:index)
end

get('/bands/new') do
  erb(:band_new)
end
