class GroupEnrollmentsController < ApplicationController
  def index
    @group_enrollments = GroupEnrollment.all
    render("group_enrollments/index.html.erb")
  end

  def show
    @group_enrollment = GroupEnrollment.find(params[:id])
    render("group_enrollments/show.html.erb")
  end

  def new
    @group_enrollment = GroupEnrollment.new
    render("group_enrollments/new.html.erb")
  end

  def create
    @group_enrollment = GroupEnrollment.new
    @group_enrollment.user_id = params[:user_id]
    @group_enrollment.group_id = params[:group_id]

    save_status = @group_enrollment.save

    if save_status == true
      redirect_to("/groups/#{@group_enrollment.group_id}", :notice => "Joined group!")
    else
      render("group_enrollments/new.html.erb")
    end
  end

  def edit
    @group_enrollment = GroupEnrollment.find(params[:id])

    render("group_enrollments/edit.html.erb")
  end

  def update
    @group_enrollment = GroupEnrollment.find(params[:id])

    @group_enrollment.user_id = params[:user_id]
    @group_enrollment.group_id = params[:group_id]

    save_status = @group_enrollment.save

    if save_status == true
      redirect_to("/group_enrollments/#{@group_enrollment.id}", :notice => "Group enrollment updated successfully.")
    else
      render("group_enrollments/edit.html.erb")
    end
  end

  def destroy
    @group_enrollment = GroupEnrollment.find(params[:id])

    @group_enrollment.destroy

    if URI(request.referer).path == "/group_enrollments/#{@group_enrollment.id}"
      redirect_to("/", :notice => "Group enrollment deleted.")
    else
      redirect_to(:back, :notice => "Group enrollment deleted.")
    end
  end
end
