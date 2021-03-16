require 'httparty'

class WeatherCall     

    attr_accessor :place, :cityinfo, :place, :score, :appid

    def initialize    
        @place = "London" 

        @appid = "" 

        @cityinfo = []  
    end 

    def find(city = @place)    

        res = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{city},uk&APPID=#{@appid}")     
        
        WeatherInfo.new.input_weather(res)
    end    
end     

class WeatherInfo   

    attr_accessor :cityinfo

    def initialize 
        @cityinfo = [] 
    end 

    def input_weather(res)
        if res['cod'] == "404"   
            @cityinfo << "weather"  
        else  
            @cityinfo.push(res['name'], res['main']['temp'], res['main']['feels_like'], res['wind']['speed'])
            res['weather'].each { |des| @cityinfo << des['description'] } 
            @cityinfo 
        end  
    end   

end

