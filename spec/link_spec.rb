require 'link'

describe Link do
  describe '#all' do
    it 'shows all links' do
      links = Link.all
      expect(links).to include("https://www.google.co.uk")
      expect(links).to include("http://www.bbc.co.uk/news")
      expect(links).to include("http://www.pitchero.com/clubs/dulwichhamlet")

    end
  end
end
