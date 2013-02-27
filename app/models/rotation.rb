class Rotation < ActiveRecord::Base
  attr_accessible :description
  has_many :course
  
  def all_rotations
    rotations = new Rotarions
    rotations.all
  end
end
