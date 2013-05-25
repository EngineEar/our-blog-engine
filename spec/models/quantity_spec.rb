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

require 'spec_helper'

describe Quantity do
  pending "add some examples to (or delete) #{__FILE__}"
end
