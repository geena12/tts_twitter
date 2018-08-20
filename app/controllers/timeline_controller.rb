class TimelineController < ApplicationController
  def index
    @user = User.find_by(username: "jruse")
  end
end
