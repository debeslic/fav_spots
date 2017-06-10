class SpotTagsController < ApplicationController
  def index
    @spot_tags = SpotTag.all

    render("spot_tags/index.html.erb")
  end

  def show
    @spot_tag = SpotTag.find(params[:id])

    render("spot_tags/show.html.erb")
  end

  def new
    @spot_tag = SpotTag.new

    render("spot_tags/new.html.erb")
  end

  def create
    @spot_tag = SpotTag.new

    @spot_tag.spot_id = params[:spot_id]
    @spot_tag.tag_id = params[:tag_id]

    save_status = @spot_tag.save

    if save_status == true
      redirect_to("/spot_tags/#{@spot_tag.id}", :notice => "Spot tag created successfully.")
    else
      render("spot_tags/new.html.erb")
    end
  end

  def edit
    @spot_tag = SpotTag.find(params[:id])

    render("spot_tags/edit.html.erb")
  end

  def update
    @spot_tag = SpotTag.find(params[:id])

    @spot_tag.spot_id = params[:spot_id]
    @spot_tag.tag_id = params[:tag_id]

    save_status = @spot_tag.save

    if save_status == true
      redirect_to("/spot_tags/#{@spot_tag.id}", :notice => "Spot tag updated successfully.")
    else
      render("spot_tags/edit.html.erb")
    end
  end

  def destroy
    @spot_tag = SpotTag.find(params[:id])

    @spot_tag.destroy

    if URI(request.referer).path == "/spot_tags/#{@spot_tag.id}"
      redirect_to("/", :notice => "Spot tag deleted.")
    else
      redirect_to(:back, :notice => "Spot tag deleted.")
    end
  end
end
