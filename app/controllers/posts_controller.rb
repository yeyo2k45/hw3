class PostsController < ApplicationController


  def create
  @post = Post.new
    
    @post["name"] = params["post"]["name"]
    @post["date"] = params["post"]["date"]
    @post["description"] = params["post"]["description"]
    
    @post["place_id"] = params["post"]["place_id"]
    @post.save
    
    redirect_to "/places/#{@post["place_id"]}"
  end

  def new

    @post = Post.new
    @post["place_id"] = params["place_id"]
      end
  def show
  
    @post = Post.find_by({"id" => params["id"]})
    @place = Place.find_by({"id" => @post["place_id"]})
  
  end
end
