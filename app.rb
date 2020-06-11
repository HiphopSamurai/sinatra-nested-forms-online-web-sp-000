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
      Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height],)
    end
  end
end
