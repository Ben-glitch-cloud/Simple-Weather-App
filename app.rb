require 'sinatra/base' 
require './lib/weather' 
require 'sinatra/flash' 
require 'uri'

class LocalWeather < Sinatra::Base  

  enable :sessions, :mehtod_override 

  register Sinatra::Flash

  set :session_secret, "secret"
  
  get '/' do 
    weathername = WeatherCall.new  
    city = session[:city] 
    @info = weathername.find(city)    
    if @info[0] != "weather"  
      erb :'cityweather/weathersystem'  
    else  
      flash[:notice] = "The location name must exist." 
      redirect '/new' 
    end 
  end 

  get '/new' do   
    erb :'cityweather/new'  
  end   

  post '/pushing' do 
    weathername = WeatherCall.new  
    if params[:city].length != 0
      session[:city] = params[:city]    
      redirect '/' 
    else    
      flash[:notice] = "The location must be within the UK."
    end  
    redirect '/new'  
  end  

  get '/about' do  
    erb :'cityweather/about'
  end 
 
  run! if app_file == $0
end