class CarrefourStore
  include HTTParty
  base_uri 'https://api.fr.carrefour.io/v1/openapi'
  # ?longitude=48.8351&latitude=2.3669&radius=500&city=Paris&limit=100

  def initialize
    @options = {
      query: { limit: 10 },
      headers: {
        'accept' => 'application/json',
        'x-ibm-client-id' => 'd7c31c50-3581-400d-80f9-17267dbd9172',
        'x-ibm-client-secret' => 'O3hO8sT7xR1pN7bJ2pW6oL4wW2dI2sQ6hB3fK8lR2nP6hO6lS8'
      }
    }
  end

  def stores(city)
    options = @options[:query].merge({ city: city })
    self.class.get('/stores', options)
  end

# curl --request GET \
#   --url 'https://api.fr.carrefour.io/v1/openapi/stores?longitude=48.8351&latitude=2.3669&radius=500&city=Paris&limit=100' \
#   --header 'accept: application/json' \
#   --header 'x-ibm-client-id: d7c31c50-3581-400d-80f9-17267dbd9172' \
#   --header 'x-ibm-client-secret: rK5hL6lL6lC1vS3tG3gJ8cP4aL5aC5kH0rT4yB7uA6dP5gU0qR'
end
