require 'sinatra'

get '/' do
  hour = Time.now.getlocal("-07:00").hour
  day_or_night = (hour < 8 || hour > 20) ? "night" : "day"
  send_file "public/index_#{day_or_night}.html"
end
