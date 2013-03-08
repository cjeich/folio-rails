class Comment < ActiveRecord::Base
  attr_accessible :email, :subject, :text, :user_id
  belongs_to :project

  scope :recent, order("created_at desc").limit(5)
end
