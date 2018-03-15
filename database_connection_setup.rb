require './lib/database_connection'

# setting up a database connection:
if ENV['ENVIRONMENT'] == 'test'
  DatabaseConnection.setup('bookmark_manager_test')
else
  DatabaseConnection.setup('bookmark_manager')
end

# this script is required in app.rb
