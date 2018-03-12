require 'sinatra/base'
require 'sinatra/reloader'

class HelloWorld < Sinatra::Base
	configure :development do
		register Sinatra::Reloader
	end

	# route for a greeting (optional to pass /YourName)
	get '/?:name?' do
		"#{params[:name] ? 'Hello '+params[:name] : 'What\'s your name?' }"
	end
end