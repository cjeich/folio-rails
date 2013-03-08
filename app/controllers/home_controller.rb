class HomeController < ApplicationController
  def index
  	@projects = Project.recent
  	@users = User.recent
  	@comments = Comment.recent
  end
end
