require 'link'

describe Link do
  describe '.all' do
    it 'shows all links' do
      links = Link.all
      expect(links).to include('http://www.google.com')
      expect(links).to include('http://www.makersacademy.com')
      expect(links).to include('http://www.facebook.com')
    end
  end
  describe '.add_link' do
    it 'adds link to table' do
      Link.add_link(url: 'http://www.eldia.com')
      expect(Link.all).to include 'http://www.eldia.com'
    end

    it 'does not create a new link if the URL is not valid' do
      Link.add_link(url: 'not a real link')

      expect(Link.all).not_to include 'not a real link'
    end
  end
end
