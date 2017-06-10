class Review < ApplicationRecord

  belongs_to :group_enrollement, :class_name => "GroupEnrollment"
  belongs_to :spot
  has_many :likes, :dependent => :destroy

end
