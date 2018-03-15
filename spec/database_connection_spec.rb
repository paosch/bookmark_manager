require 'database_connection'

RSpec.describe DatabaseConnection do # tests setup, a wrapper of the PG.connect method
  describe '.setup' do
    it 'sets up a connection to a database through PG' do
      expect(PG).to receive(:connect).with(dbname: 'bookmark_manager_test')
      DatabaseConnection.setup('bookmark_manager_test')
    end
  end

  # describe '.connection' do
  #   it 'this connection is persistent' do
  #   #   # Grab the connection as a return value from the .setup method
  #     connection = DatabaseConnection.setup('bookmark_manager_test')
  #     expect(DatabaseConnection.connection).to eq connection
  #   end
  # end

  describe '.query' do
    it 'executes an SQL query via PG' do
      connection = DatabaseConnection.setup('bookmark_manager_test')
      expect(connection).to receive(:exec).with("SELECT * FROM links;")
      DatabaseConnection.query("SELECT * FROM links;")
    end
  end
end
