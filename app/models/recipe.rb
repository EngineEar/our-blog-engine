# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  description  :text
#  instructions :text
#  posted_on    :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

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
