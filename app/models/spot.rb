class Spot < ApplicationRecord

  has_many :reviews
  has_many :local_tags, :class_name => "SpotTag", :dependent => :destroy
  has_many :photos, :dependent => :destroy

  validates :name, :uniqueness => { :scope => :neighborhood }
  validates :address, :presence => true
  validates :address, :presence => true
  validates :city, :presence => true
  validates :neighborhood, :presence => true
  validates :photo, :presence => true


end
