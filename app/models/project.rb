class Project < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :comments
  belongs_to :user

  scope :newest, order("created_at desc").limit(5)
  scope :recent, order("updated_at desc").limit(5)
end
