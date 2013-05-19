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

require 'spec_helper'

describe Ingredient do
  pending "add some examples to (or delete) #{__FILE__}"
end
