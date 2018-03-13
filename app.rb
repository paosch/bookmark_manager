require 'sinatra/base'
require './lib/link'

class BookmarkManager < Sinatra::Base
get '/' do
#p ENV # not concerned with the web app but with Sinatra settings. It prints variable in Terminal after I do rackup config.ru
  # @links = [
  #   "https://www.google.co.uk",
  #   "http://www.bbc.co.uk/news",
  #   "http://www.pitchero.com/clubs/dulwichhamlet"
  #]
  @links = Link.all
  erb :index
end

run! if app_file == $0
end
