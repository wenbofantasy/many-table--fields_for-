class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :avatar, :work_collections_attributes, :work_experiences_attributes
  has_attached_file :avatar, :styles => { :medium => "150x150>" }
  has_many :work_collections
  accepts_nested_attributes_for :work_collections
  has_many :work_experiences
  accepts_nested_attributes_for :work_experiences
end
