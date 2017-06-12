class Review < ApplicationRecord

  belongs_to :group_enrollment, :class_name => "GroupEnrollment", :foreign_key => "group_enrollement_id"
  belongs_to :spot
  # belongs_to :user, :through => :group_enrollment, :foreign_key => "group_enrollement_id"
  # belongs_to :group, :through => :group_enrollment
  has_many :likes, :dependent => :destroy

  validates :spot_id, :presence => true

  validates :group_enrollement_id, :presence => true
  validates :spot_id, :uniqueness => {:scope => :group_enrollement_id}

  validates :rating, :presence => true
  validates :rating, numericality: { only_integer: true , :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5}

  validates :review, :presence => true
  validates :review, length: { maximum: 140 }

end
