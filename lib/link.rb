#require 'pg'
require_relative 'database_connection'

class Link
  def self.all
    result = DatabaseConnection.query("SELECT * FROM links")
    result.map { |link| link['url']}
  end

  def self.add_link(url)
    return false unless is_url?(url)
    DatabaseConnection.query("INSERT INTO links (url) VALUES('#{url}')")
  end # using DatabaseConnection to connect to and act on the database

  private

  def self.is_url?(url)
    url =~ /\A#{URI::regexp(['http', 'https'])}\z/
  end
end

# there are no instances, class methods will work in every instance
# we've replaced calls to PG.connect and connection.exec with the new DatabaseConnection wrapper class
