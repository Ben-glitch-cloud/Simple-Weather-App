require 'sinatra/base' 
require './lib/weather'

class LocalWeather < Sinatra::Base  

  enable :sessions 

  set :session_secret, "secret"
  
  get '/' do 
    weathername = WeatherCall.new  
    city = session[:city] 
    @info = weathername.find(city)    
    @info[0] == "weather" ? (redirect '/new') : (erb :'cityweather/weathersystem') 
  end 

  get '/new' do   
    erb :'cityweather/new'  
  end   

  post '/' do 
    weathername = WeatherCall.new     
    if params[:city].length != 0
      session[:city] = params[:city]    
      redirect '/' 
    else   
      redirect '/new'  
    end 
  end  

  get '/about' do  
    erb :'cityweather/about'
  end 
 
  run! if app_file == $0
end