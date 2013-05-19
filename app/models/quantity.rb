# == Schema Information
#
# Table name: quantities
#
#  id         :integer          not null, primary key
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Quantity < ActiveRecord::Base
  attr_accessible :amount, :ingredient, :ingredient_attributes

  belongs_to :recipe
  belongs_to :ingredient

  accepts_nested_attributes_for :ingredient, :reject_if => :all_blank
end
