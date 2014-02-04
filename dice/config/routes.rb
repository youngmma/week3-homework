Dice::Application.routes.draw do
  #set all possible get & post route
  get "/dice" => 'dice#dices'
  post "/dice" => 'dice#dices'
  post "/dice/play" => 'dice#play'  
end
