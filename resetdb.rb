require 'pg'

connection = PG.connect dbname: 'bookmark_manager'
connection.exec("DELETE FROM links;")
connection.exec("ALTER SEQUENCE links_id_seq RESTART WITH 1;")
