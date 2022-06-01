module Api
  class GreetingsController < ApplicationController
    def index
      greeting = Greeting.order(Arel.sql('RANDOM()')).first
      render json: { message: greeting.content }
    end
  end
end
