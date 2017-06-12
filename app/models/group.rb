class Group < ApplicationRecord

  has_many :group_enrollments, :dependent => :destroy
  has_many :users, :through => :group_enrollments
  has_many :reviews, :through => :group_enrollments

  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :photo, :presence => true 

end
