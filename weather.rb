require 'barometer'
    
def temp (location)
  weather = Barometer.new(location).measure
end

puts "Pls. enter the location; name of the city, zipcode, landmark or Woe ID."
local = gets.to_s

weather = temp(local)
tomorrow = Time.now.strftime("%d").to_i + 1
   
weather.forecast.each do |forecast|
    day = forecast.starts_at.day
    if day == tomorrow
        title = "Tomorrow"
    else
        title = forecast.starts_at.strftime("%A")
    end
        
    puts title + ' is going to be ' + forecast.icon + ' with a low of ' + forecast.low.c.to_s + ' and a high of ' + forecast.high.c.to_s
end










