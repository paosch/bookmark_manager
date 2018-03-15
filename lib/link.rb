#require 'pg'
require_relative 'database_connection'

class Link
  def self.all
    result = DatabaseConnection.query("SELECT * FROM links")
    result.map { |link| link['url']}
  end

  def self.add_link(link)
    DatabaseConnection.query("INSERT INTO links (url) VALUES('#{link}')")
  end# using DatabaseConnection to connect to and act on the database
end
# there are no instances, class methods will work in every instance
# we've replaced calls to PG.connect and connection.exec with the new DatabaseConnection wrapper class
