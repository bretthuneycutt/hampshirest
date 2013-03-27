require 'sinatra'

get '/' do
  hour = Time.now.hour
  day_or_night = (hour < 8 || hour > 20) ? "night" : "day"
  send_file "public/index_#{day_or_night}.html"
end
