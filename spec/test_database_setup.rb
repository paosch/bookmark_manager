#p "Setting up test database..."

require 'pg'

connection = PG.connect(dbname: 'bookmark_manager_test')

connection.exec("TRUNCATE links;") # same as DELETE FROM links
# adding links to database:
connection.exec("ALTER SEQUENCE links_id_seq RESTART WITH 1;")
connection.exec("INSERT INTO links (url) VALUES('http://www.makersacademy.com');")
connection.exec("INSERT INTO links (url) VALUES('http://www.google.com');")
connection.exec("INSERT INTO links (url) VALUES('http://www.facebook.com');")


#THIS WILL BE REPLACED WITH RAKE TASK
