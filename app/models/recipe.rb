class Recipe < ActiveRecord::Base
  attr_accessible :description, :instructions, :posted_on, :title

  validates :title, :presence => true
  validates :description, :presence => true
  validates :instructions, :presence => true
  belongs_to :user

  has_many :quantities
  has_many :ingredients, :through => :quantities
  
  accepts_nested_attributes_for :quantities, 
           :reject_if => :all_blank, 
           :allow_destroy => true
  accepts_nested_attributes_for :ingredients
end
