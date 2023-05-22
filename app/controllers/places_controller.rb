class PlacesController < ApplicationController


    def show
        @place = Place.find_by({ "id" => params["id"] })
        @posts = Post.where({"place_id" => @place["id"]})
      end

      
    def index
      @places = Place.all
    end
    
    def create

      @place = Place.new
      @place["name"] = params["place"]["name"]
      @place.save


    redirect_to "/places"
    end

      def new
        @place = Place.new
      end
   

end
