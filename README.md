<h1 align="center"> Simple-Weather-App</h1>  

<p align="center"><img align="center" src="https://user-images.githubusercontent.com/71974361/111329351-f9c2a000-8666-11eb-8c6d-04865879d6a7.gif" width="250" hight="250"/></p> 

<h2>Intro</h2>
<p>Welcome to my simple weather app,  where you can search for the weather anywhere in the  United Kingdom. 🇬🇧</p>   
 
 <h2>What does this app use</h2> 

<h4>Languages</h4>
<p><img src="https://img.shields.io/badge/-Ruby-black?logo=Ruby&logoColor=red"> <img src="https://img.shields.io/badge/-HTML5-black?logo=HTML5&logoColor=orange"> <img src="https://img.shields.io/badge/-CSS3-black?logo=CSS3&logoColor=blue"></p>
 
 <h4>Gems</h4> 

<p><img src="https://img.shields.io/badge/-Rspec-black?logo=RubyGems&logoColor=red"> <img src="https://img.shields.io/badge/-Sinatra-black?logo=RubyGems&logoColor=yellow"> <img src="https://img.shields.io/badge/-Httparty-black?logo=RubyGems&logoColor=green"> <img src="https://img.shields.io/badge/-Capybara-black?logo=RubyGems&logoColor=lightblue"></p>

<h2>How to get set up</h2>  

<p>1: First fork the repository</p>  
<p>2: Then clone the repository by copying the URL found in the copy with HTTPS.</p>

```  
$ git clone https://github.com/Ben-glitch-cloud/Simple-Weather-App.git 
```  
<p>3: Now open the project in a code editor alone side a terminal</p>  

<p>4: You will need to install all the gems that come with the project.</p> 

``` 
$ install bundle 
```  

<p>5a: Once all the gems have been installed,  you need to downgrade your ruby to version 2.5.0</p> 

```  
$ rbenv install 2.5.0 
``` 

<p>5b: If you believed already have this version then check with  this command.</p> 

``` 
$ rvm list
``` 

<p>5c:To switch the Ruby version</p> 

``` 
$ rvm 2.5.0
``` 
<p>Just a little bit more to go before we get started</p>  

<p>If you open up lib/whether.rb file and look at line 10 you can see the @appid is an empty string 😐. That is because the API key has not been created, we will need this to run the web app.</p>   

``` 
@appid = ""  
``` 

<p>6: Follow the link below and register with the OpenWeather API. Once you have registered you  will be given a  API key. Which can be found in api_keys section of your profile.</p>  

<a href="https://openweathermap.org/">openweathe</a> 

<p>7:Copy the API into the empty @appid string.</p>  
<p>This is just an example</p> 

```
@appid="r4325423h23oiu4t73yto329yt"
```
<p>8: Now you are ready to use the app. Type into the terminal rackup and press enter</p>   

``` 
$ rackup
```

<p>9: Now open a new Browser window and type in localhost9292</p>  

<h3>👏All Done✅</h3>


