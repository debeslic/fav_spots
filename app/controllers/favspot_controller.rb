class FavspotController < ApplicationController

  def index
    @group_enrollments = GroupEnrollment.where(:user_id => current_user.id)
    @likes = Like.where(:user_id => current_user.id)
    
    render("favspots/index.html.erb")
  end

end
