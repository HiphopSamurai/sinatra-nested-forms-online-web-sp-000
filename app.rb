require './environment'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here
    ### To show all the pirates ###
    get '/pirates' do
      @pirates = Pirate.all

      erb :'pirates/index'
    end

    ### route needs to be define to get to the new page ###
    get '/pirates/new' do
      erb :'pirates/new'
    end

    ### To show one pirate ###
    get '/pirates/:id' do
      @pirate = Pirate.find(params["id"])

      erb :'pirates/show'
    end

    post '/pirates' do
      pirate = Pirate.create(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])
      params[:pirate][:ships].each do |ship_data|
        ship = Ship.new(ship_data)
        ship.pirate = pirate
        ship.save
      end
    end
  end
end
