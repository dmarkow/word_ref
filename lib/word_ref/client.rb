require 'faraday'
require 'faraday_middleware'

module WordRef
  API_KEY = ENV['WORDREF_API_KEY']
  class Client
    attr_accessor :result
    attr_accessor :conn, :response

    def initialize
      @conn = Faraday.new(:url => "http://api.wordreference.com/#{API_KEY}/json") do |builder|
        builder.response :logger
        builder.use FaradayMiddleware::Mashify
        builder.use FaradayMiddleware::ParseJson
        builder.adapter :net_http
      end
    end

    # Sets the response object and then returns the mashified body
    def get(lang, term)
      query = "#{lang}/#{term}"
      @response = @conn.get query
      @response.body
    end
  end
end
