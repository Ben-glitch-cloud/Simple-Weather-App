require 'weather.rb' 

describe WeatherCall do 

    let (:weathercall) {weathercall = WeatherCall.new}

    it 'should return an empty array' do
        expect(weathercall.place).to eq("London")
    end 

    it 'should return a appid string' do
        expect(weathercall.appid.class).to eq(String)
    end 

    it 'should return an empty array' do
        expect(weathercall.cityinfo).to eq([])
    end 

    describe 'find' do
        it 'should return a location' do
            expect(weathercall.find('London').length).to eq(5)
        end  

        it 'should return nothing' do
            expect(weathercall.find('')).to eq(["weather"])
        end

        it 'should return nothing but weather' do
            expect(weathercall.find('hi')).to eq(["weather"])
        end
    end  
end 

describe WeatherInfo do 

    let (:weatherinfo) {weatherinfo = WeatherInfo.new}

    it 'should return an empty array' do
        expect(weatherinfo.cityinfo).to eq([])
    end  

    describe 'input_weather' do
        it 'should return a an array with a length of 5' do
           expect(weatherinfo.input_weather({"coord"=>{"lon"=>-0.1257, "lat"=>51.5085}, "weather"=>[{"id"=>803, "main"=>"Clouds", "description"=>"broken clouds", "icon"=>"04n"}], "base"=>"stations", "main"=>{"temp"=>280.99, "feels_like"=>276.95, "temp_min"=>280.37, "temp_max"=>282.04, "pressure"=>1031, "humidity"=>71}, "visibility"=>10000, "wind"=>{"speed"=>3.6, "deg"=>340}, "clouds"=>{"all"=>81}, "dt"=>1615928237, "sys"=>{"type"=>1, "id"=>1414, "country"=>"GB", "sunrise"=>1615875130, "sunset"=>1615917968}, "timezone"=>0, "id"=>2643743, "name"=>"London", "cod"=>200})).to eq(["London", 280.99, 276.95, 3.6, "broken clouds"])
        end   
    end 
end