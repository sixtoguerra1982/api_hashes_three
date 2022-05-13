require "uri"
require "net/http"
require "json"
require "byebug"

def request(url_request)

    url = URI(url_request)

    https = Net::HTTP.new(url.host, url.port)
    https.verify_mode = OpenSSL::SSL::VERIFY_PEER
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)
    
    # request["app_id"] = ARGV[0]
    # request["app_key"] = ARGV[1]

    request["app_id"] = ENV["app_id"]
    request["app_key"] = ENV["app_key"]

    response = https.request(request)
    # puts response.read_body
    # pp "#{response.read_body}"
    return JSON.parse(response.read_body)
end


response_parseada = request("https://od-api.oxforddictionaries.com:443/api/v2/entries/es/#{ARGV[0]}")


 print "#{response_parseada["results"][0]["lexicalEntries"][0]["entries"][0]["senses"][0]["definitions"][0]} \n"
# print "#{response.class} \n"