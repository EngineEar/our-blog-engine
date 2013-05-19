# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  calories   :float
#  protein    :float
#  carbs      :float
#  fat        :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ActiveRecord::Base
  	attr_accessible :calories, :carbs, :fat, :name, :protein

  	before_save { name.downcase! }
  	validates :name, presence: true, uniqueness: { case_sensitive: false }

  	has_many :quantities
  	has_many :recipes, through: :quantities
end
