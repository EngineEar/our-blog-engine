# == Schema Information
#
# Table name: articles
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  body         :text
#  published_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  excerpt      :string(255)
#  location     :string(255)
#

class Article < ActiveRecord::Base
  attr_accessible :body, :excerpt, :location, :published_at, :title
  validates :title, :presence => true
  validates :body, :presence => true
  belongs_to :user
end
