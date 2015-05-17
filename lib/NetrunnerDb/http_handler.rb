require 'faraday'
require 'json'

module NetrunnerDb
  class HttpHandler

    def self.process_request(url_param)
      response = Faraday.get("http://netrunnerdb.com#{url_param}")
      nil unless response.env['status'] == 200
      JSON.parse(response.body)
    end

    def self.get_sets
      return HttpHandler.process_request('/api/sets/')
    end
    def self.get_cards
      return HttpHandler.process_request('/api/cards/')
    end
    def self.get_set(set_code)
      return HttpHandler.process_request("/api/set/#{set_code}/")
    end
    def self.get_card(card_code)
      return HttpHandler.process_request("/api/card/#{card_code}/")
    end
    def self.get_decklist(decklist_id)
      return HttpHandler.process_request("/api/decklist/#{decklist_id}/")
    end

  end
end

