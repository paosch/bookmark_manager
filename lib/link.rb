require 'pg'

class Link


  def self.all

    # [
    #   "https://www.google.co.uk",
    #   "http://www.bbc.co.uk/news",
    #   "http://www.pitchero.com/clubs/dulwichhamlet"
    # ]
    connection = PG.connect :dbname => 'bookmark_manager', :user => 'paosch'
    result = connection.exec "SELECT * FROM links"
    result.map { |link| link['url'] }
  end
end
