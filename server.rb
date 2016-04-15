require'sinatra'
require'sinatra/reloader' if development?
require_relative'./lib/fake.rb'


set :haml, format: :html5
enable(:sessions)

fake = Fake.new


get '/movies' do
	erb(:index)
end


post '/movies' do
	@title = params[:title].to_s
	@fake = fake
	fake.search_movies(@title)
	redirect '/film' 
end

get '/film' do
	erb(:films)
end