# == Schema Information
#
# Table name: quantities
#
#  id            :integer          not null, primary key
#  amount        :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  recipe_id     :integer
#  ingredient_id :integer
#

class Quantity < ActiveRecord::Base
  attr_accessible :amount, :ingredient, :ingredient_attributes

  belongs_to :recipe
  belongs_to :ingredient

  accepts_nested_attributes_for :ingredient, :reject_if => :all_blank

  	def ingredient_attributes=(ingredient_attributes)
		ingredient = Ingredient.find_or_create_by_name(ingredient_attributes[:name].downcase)
		self.ingredient_id = ingredient.id
	end
end
