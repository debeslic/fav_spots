class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_many :group_enrollments, :dependent => :destroy
  has_many :likes
  has_many :groups, :through => :group_enrollments

  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
