require 'sinatra/base'
require 'sinatra/reloader'

class HelloWorld < Sinatra::Base
	configure :development do
		register Sinatra::Reloader
	end

	get '/' do
		'Hello World'
	end

	# route for /yourName
	get '/:name' do
		"Hello, #{params[:name]}"
	end
end