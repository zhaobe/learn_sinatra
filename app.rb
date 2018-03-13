require 'sinatra'
require 'sinatra/reloader'

configure :development do
	register Sinatra::Reloader
end

get '/' do
	@title = 'Welcome to dinner voting'
	erb :index
end

post '/cast' do
  @title = 'Thanks for casting your vote!'
  @vote  = params['vote']
  erb :cast
end

Choices = {
  'HAM' => 'Hamburger',
  'PIZ' => 'Pizza',
  'CUR' => 'Curry',
  'NOO' => 'Noodles',
}