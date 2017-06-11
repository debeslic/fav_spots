class GroupEnrollment < ApplicationRecord
  belongs_to :user
  belongs_to :group
  has_many :reviews, :class_name => "Review", :foreign_key => "group_enrollement_id"
  validates :user_id, :presence => true
  validates :group_id, :uniqueness => {:scope => :user_id}
end
