require 'sinatra'
require 'sinatra/reloader'

configure :development do
	register Sinatra::Reloader
end

get '/' do
	@title = 'Welcome to Marvel movies voting'
	erb :index
end

post '/cast' do
  @title = 'Thanks for casting your vote!'
  @vote  = params['vote']
  erb :cast
end

Choices = {
  'IM' => 'Iron Man',
  'HU' => 'Hulk',
  'IM2' => 'Iron Man 2',
  'TH' => 'Thor',
  'CA' => 'Captain America',
  'AV' => 'Avengers',
  'TH2' => 'Thor 2',
  'IM3' => 'Iron Man 3',
  'CA2' => 'Captain America 2',
  'GG' => 'Guardians of the Galaxy',
  'AV2' => 'Avengers 2',
  'AM' => 'Ant Man',
  'CA3' => 'Captain America 3',
  'DS' => 'Doctor Strange',
  'GG2' => 'Guardians of the Galaxy 2',
  'SM' => 'Spider-Man',
  'TH3' => 'Thor 3',
  'BP' => 'Black Panther',
}