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

require 'spec_helper'

describe Recipe do
  pending "add some examples to (or delete) #{__FILE__}"
end
