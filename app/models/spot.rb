class Spot < ApplicationRecord

  has_many :reviews
  has_many :local_tags, :class_name => "SpotTag", :dependent => :destroy
  has_many :photos, :dependent => :destroy

end
