# learn_sinatra

# Setup
- `gem install sinatra`
- `gem install thin`
- `gem install sinatra-contrib` for [auto-reloader](http://sinatrarb.com/contrib/reloader)
- `gem install rack_csrf`
- run command: `ruby myapp.rb`

# Basics
- when using a config.ru to run HelloWorld, use `rackup` to serve application

# New restructuring for project
- app
	- controllers
		- app.rb
	- models
		- user.rb
	- views
		- registrations
		- sessions
		- users
- config

# Remainder tasks:
- change login form to use post method instead of get method
- restructure the project
- work on user auth