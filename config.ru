require 'sinatra/base'

class Trivial < Sinatra::Base
  get '/' do
    content_type :text
    "Aren't you glad you can see this?"
  end
end

run Trivial
