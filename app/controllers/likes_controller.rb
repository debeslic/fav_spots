class LikesController < ApplicationController
  def index
    @likes = Like.all

    render("likes/index.html.erb")
  end

  def show
    @like = Like.find(params[:id])

    render("likes/show.html.erb")
  end

  def new
    @like = Like.new

    render("likes/new.html.erb")
  end

  def create
    @like = Like.new

    @like.review_id = params[:review_id]
    @like.user_id = params[:user_id]
    @like.rating = params[:rating]
    @group = @like.review.group_enrollment.group
    save_status = @like.save

    if save_status == true
      redirect_to("/groups/#{@group.id}", :notice => "You liked the spot! Added to My FavSpots.")
    else
      render("likes/new.html.erb")
    end
  end

  def edit
    @like = Like.find(params[:id])

    render("likes/edit.html.erb")
  end

  def update
    @like = Like.find(params[:id])

    @like.review_id = params[:review_id]
    @like.user_id = params[:user_id]
    @like.rating = params[:rating]

    save_status = @like.save

    if save_status == true
      redirect_to("/likes/#{@like.id}", :notice => "Like updated successfully.")
    else
      render("likes/edit.html.erb")
    end
  end

  def destroy
    @like = Like.find(params[:id])

    @like.destroy

    if URI(request.referer).path == "/likes/#{@like.id}"
      redirect_to("/", :notice => "You unliked the spot. Removed from FavSpots")
    else
      redirect_to(:back, :notice => "You unliked the spot. Removed from FavSpots.")
    end
  end
end
