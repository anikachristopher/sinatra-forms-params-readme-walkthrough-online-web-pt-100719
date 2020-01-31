require_relative 'config/environment'

class App < Sinatra::Base

  get '/food_form' do
    erb :food_form
    params = {
  :name => "Sam",
  :favorite_food => "Green Eggs and Ham"
}
  end

  # Add your post route and action below
  post '/food' do
    # params.to_s
    "My name is #{params[:name]}, and I love #{params[:favorite_food]}"
  end
end