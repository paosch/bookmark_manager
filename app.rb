require 'sinatra/base'
require './lib/link'

class BookmarkManager < Sinatra::Base
get '/' do
  @links = Link.all
  # @links = [
  #   "https://www.google.co.uk",
  #   "http://www.bbc.co.uk/news",
  #   "http://www.pitchero.com/clubs/dulwichhamlet"
  #]

  erb :index
end

run! if app_file == $0
end
