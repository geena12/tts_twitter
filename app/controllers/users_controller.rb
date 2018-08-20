class UsersController < ApplicationController
  def index
    @users = User.where.not(username: "jruse")
  end
end
