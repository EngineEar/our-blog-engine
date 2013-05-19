class Ingredient < ActiveRecord::Base
  	attr_accessible :calories, :carbs, :fat, :name, :protein
  	validates :name, presence => :true, uniqueness: { case_sensitive: false }

  	has_many :quantities
  	has_many :recipes, through: :quantities
end
