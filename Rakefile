require 'pg'

task :test_database_setup do
  p "Cleaning database..."
end

connection = PG.connect(dbname: 'bookmark_manager_test')

# clearing database:
connection.exec("TRUNCATE links;") # same as DELETE FROM links
# adding test data to database:
connection.exec("ALTER SEQUENCE links_id_seq RESTART WITH 1;")
connection.exec("INSERT INTO links (url) VALUES('http://www.makersacademy.com');")
connection.exec("INSERT INTO links (url) VALUES('http://www.google.com');")
connection.exec("INSERT INTO links (url) VALUES('http://www.facebook.com');")

# CLEANS DATABASE AND FILLS IT WITH THE REQUIRED TEST DATA
# EVERYTIME WE RUN rake test_database_setup

task :setup do
  p "Creating databases..."

  connection = PG.connect
  connection.exec("CREATE DATABASE bookmark_manager;")
  connection.exec("CREATE DATABASE bookmark_manager_test;")

  connection = PG.connect(dbname: 'bookmark_manager')
  connection.exec("CREATE TABLE links(id SERIAL PRIMARY KEY, url VARCHAR(60));")

  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("CREATE TABLE links(id SERIAL PRIMARY KEY, url VARCHAR(60));")

end
