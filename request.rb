require "uri"
require "net/http"

url = URI("https://api.nasa.gov/planetary/apod?api_key=ggRQ9HgxkoT1wuW4vr9JDDBSunVQGIUzOXF34Xhg")

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Get.new(url)

response = https.request(request)
puts response.read_body
