class UsersController < ApplicationController
  def show
    found_user = User.find_by(id: params[:id])
    render json: found_user, include: :items
  end
end
