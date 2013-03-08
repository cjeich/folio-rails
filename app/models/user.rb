class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :screen_name, :image
  has_many :comments
  has_many :projects


  validates_presence_of :screen_name, :email
  validates_uniqueness_of :screen_name

   mount_uploader :image, ImageUploader
   scope :recent, order("created_at desc").limit(5)

   def name
   		[ @first_name, @last_name ].join(' ') || @screen_name || 'No Name Given'
   	end
end
