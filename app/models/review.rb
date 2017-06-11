class Review < ApplicationRecord

  belongs_to :group_enrollment, :class_name => "GroupEnrollment", :foreign_key => "group_enrollement_id"
  belongs_to :spot
  # belongs_to :user, :through => :group_enrollment, :foreign_key => "group_enrollement_id"
  # belongs_to :group, :through => :group_enrollment
  has_many :likes, :dependent => :destroy

end
