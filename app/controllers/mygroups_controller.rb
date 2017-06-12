class MygroupsController < ApplicationController

  def index
    @groups = Group.all
    @group_enrollments = GroupEnrollment.all

    render("mygroups/index.html.erb")
  end



end
