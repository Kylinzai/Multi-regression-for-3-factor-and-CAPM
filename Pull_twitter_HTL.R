myapp=oauth_app("twitter",key="8Fz53XkhAAbLaAF29PJj0mpWH",secret="tIRZdssp0nAf61PJY8anWlnrf1Ti0290eEOVG4IQ04SZ1nMHuO")
sig=sign_oauth1.0(myapp,token="3170107353-7eXdIRUn0NiW7nouTqH2P2JVrcSczdAtAPvBxol",token_secret="rfrqZMJlOjvXekgrrbT5BzxrKRaD0m4Q1cZRfslTLYguT")
homeTL=GET("https://api.twitter.com/1.1/statuses/home_timeline.json",method="curl",sig)
json1=content(homeTL)
json2=jsonlite::fromJSON(toJSON(json1))
json2[1,1:4]



