require "uri"
require "net/http"
require "json"

def request(url)
    url = URI(url)

    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true

    request = Net::HTTP::Get.new(url)

    response = https.request(request)
    results = JSON.parse(response.read_body)
end
puts request("https://api.nasa.gov/planetary/apod?api_key=ggRQ9HgxkoT1wuW4vr9JDDBSunVQGIUzOXF34Xhg")
# puts results["date"]

