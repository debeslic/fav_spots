class Review < ApplicationRecord

  # belongs_to :group_enrollement, :class_name => "GroupEnrollment", :foreign_key => "group_enrollement_id"
  belongs_to :group_enrollement
  belongs_to :spot
  # belongs_to :group, :through => :group_enrollment
  has_many :likes, :dependent => :destroy

end
