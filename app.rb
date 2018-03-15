require 'sinatra/base'
require './lib/link'
require './database_connection_setup'
#require 'uri' # added in step 12
require 'sinatra/flash' # added in step 12



class BookmarkManager < Sinatra::Base
  enable :sessions # step 12
  register Sinatra::Flash

get '/' do
  @links = Link.all
  erb :index
end

# post '/create-new-link' do # the / mentioned here is not a page!
#   Link.add_link(params['url']) # params is what the user entered
#   redirect '/'
# end  REPLACED WITH:

# post '/create-new-link' do
#   if params['url'] =~ /\A#{URI::regexp(['http', 'https'])}\z/
#     Link.add_link(url: params['url'])
#   else
#     flash[:notice] = "You must submit a valid URL."
#   end
#   redirect('/')
# end
# REPLACED WITH:

post '/create-new-link' do
  flash[:notice] = "You must submit a valid URL." unless Link.add_link(params['url'])
  redirect('/')
end




run! if app_file == $0
end
