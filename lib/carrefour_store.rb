require 'uri'
require 'openssl'
require 'net/http'

class CarrefourStore
  def self.request!(city)
    url = URI("https://api.fr.carrefour.io/v1/openapi/stores?city=#{city}&limit=10")

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER

    request = Net::HTTP::Get.new(url)
    request["x-ibm-client-id"] = ENV['CARREFOUR_CLIENT_ID']
    request["x-ibm-client-secret"] = ENV['CARREFOUR_CLIENT_SECRET']
    request["accept"] = 'application/json'

    response = http.request(request)
    response.read_body
  end
end
