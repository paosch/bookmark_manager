require 'sinatra/base'
require './lib/link'
require './database_connection_setup'

class BookmarkManager < Sinatra::Base
get '/' do
  @links = Link.all
  erb :index
end

post '/create-new-link' do # the / mentioned here is not a page!
  Link.add_link(params['url']) # params is what the user entered
  redirect '/'
end

run! if app_file == $0
end
