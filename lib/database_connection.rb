require 'pg'

# extracting the database connection logic to a class called class DatabaseConnection
# the class sets up a persistent connection to the correct database with the method setup
class DatabaseConnection # a wrapper for PG
  def self.setup(dbname) # there's a test for this method in the spec file
    @connection = PG.connect(dbname: dbname) # we want to be able to get the connection later on
  end                                        # so we save it in @connection

  # def self.connection #ensures we can get connection later on
  #   @connection
  # end
# we can get rid of connection method and test because it relies explicitly on the persistent connection created by setup

  def self.query(sql) # uses the result of setup, and queries the database via PG
    @connection.exec(sql)
  end
end

# the query method passes an SQL query string to the connection created by setup
# there's a file called database_connection_setup.rb in spec
