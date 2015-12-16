require 'sinatra/base'

class Trivial < Sinatra::Base
  get '/' do
    envs = ''
    ENV.keys.each do |k|
      envs << "#{k}:  #{ENV[k]}\n"
    end
    content_type :text
    "Aren't you glad you can see this?\n" + envs
  end
end

run Trivial
