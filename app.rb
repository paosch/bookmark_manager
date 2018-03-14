require 'sinatra/base'
require './lib/link'

class BookmarkManager < Sinatra::Base
get '/' do
  @links = Link.all
  erb :index
end

get '/add-a-new-link' do # needed this route to go to the add-url page when Add button was clicked
  erb :add_link # staying in this route until I click something to go to another page
end

post '/create-new-link' do # the / mentioned here is not a page!
  Link.add_link(url: params['url'])
  redirect '/'
end

run! if app_file == $0
end
