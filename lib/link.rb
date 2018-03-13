require 'pg'

class Link
  def self.all

    # [
    #   "https://www.google.co.uk",
    #   "http://www.bbc.co.uk/news",
    #   "http://www.pitchero.com/clubs/dulwichhamlet"
    # ]
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec "SELECT * FROM links"
    result.map { |link| link['url'] }
  end
end
