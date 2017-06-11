class GroupsController < ApplicationController
  def index
    @groups = Group.all
    @group_enrollments = GroupEnrollment.all

    render("groups/index.html.erb")
  end

  def show
    @group = Group.find(params[:id])
    @group_enrollments = @group.group_enrollments
    @review = Review.new
    # @reviews = Review.where(:group_enrollement_id => @group_enrollments.id)
    render("groups/show.html.erb")
  end

  def new
    @group = Group.new
    render("groups/new.html.erb")
  end

  def create
    @group = Group.new

    @group.name = params[:name]
    @group.photo = params[:photo]

    save_status = @group.save

    if save_status == true
      redirect_to("/groups/#{@group.id}", :notice => "Group created successfully.")
    else
      render("groups/new.html.erb")
    end
  end

  def edit
    @group = Group.find(params[:id])

    render("groups/edit.html.erb")
  end

  def update
    @group = Group.find(params[:id])

    @group.name = params[:name]
    @group.photo = params[:photo]

    save_status = @group.save

    if save_status == true
      redirect_to("/groups/#{@group.id}", :notice => "Group updated successfully.")
    else
      render("groups/edit.html.erb")
    end
  end

  def destroy
    @group = Group.find(params[:id])

    @group.destroy

    if URI(request.referer).path == "/groups/#{@group.id}"
      redirect_to("/", :notice => "Group deleted.")
    else
      redirect_to(:back, :notice => "Group deleted.")
    end
  end
end
