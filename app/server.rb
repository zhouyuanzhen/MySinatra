# Requires the Gemfile
require 'bundler' ; Bundler.require
require 'JSON'

# By default Sinatra will return the string as the response.
get '/hello-world' do
    "Hello World!"
end

get '/hello-world-json' do
    content_type :json # Content-Type: application/json;charset=utf-8

    # Use to_json to generate JSON based on the Ruby hash
    {greeting: 'Hello World! 2021!'}.to_json
end
