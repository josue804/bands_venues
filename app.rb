ENV['RACK_ENV'] = 'development'
require('sinatra/activerecord')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/band')
require('./lib/venue')
require('./lib/event')
require('./lib/string')
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

post('/bands/new') do
  name = params['name']
  style = params['style']
  lead = params['lead']
  @band = Band.create({:name => name, :style => style, :lead => lead})
  if @band.valid?
    redirect("/")
  else
    erb(:band_new)
  end
end

get('/venues/new') do
  erb(:venue_new)
end

post('/venues/new') do
  name = params['name']
  seats = params['seats'].to_i
  indoors = params['indoors'].to_boolean
  @venue = Venue.create({:name => name, :seats => seats, :indoor => indoors})
  if @venue.valid?
    redirect("/")
  else
    erb(:venue_new)
  end
end

get('/bands/:id') do
  @band = Band.find(params['id'].to_i)
  @band_venues = @band.venues
  @venues = Venue.all
  erb(:band_info)
end

post('/bands/:id') do
  venue = Venue.find(params['venue'].to_i)
  band = Band.find(params['id'].to_i)
  venue.bands.push(band)
  redirect("/bands/#{band.id}")
end

get('/bands/:id/delete') do
  band = Band.find(params['id'].to_i)
  band.destroy
  redirect("/")
end

get('/bands/:id/edit') do
  @band = Band.find(params['id'].to_i)
  erb(:band_edit)
end

patch('/bands/:id') do
  band = Band.find(params['id'].to_i)
  band.update(:name => params['name'], :style => params['style'], :lead => params['lead'])
  redirect("/bands/#{band.id}")
end
