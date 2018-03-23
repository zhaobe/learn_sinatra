require 'sinatra'
require 'sinatra/reloader'
require 'yaml/store'

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
  @store = YAML::Store.new 'votes.yml'
  @store.transaction do
    @store['votes'] ||= {}
    @store['votes'][@vote] ||= 0
    @store['votes'][@vote] += 1
  end
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

get '/results' do
  @title = 'Results so far:'
  @store = YAML::Store.new 'votes.yml'
  @votes = @store.transaction { @store['votes']}
  erb :results
end
