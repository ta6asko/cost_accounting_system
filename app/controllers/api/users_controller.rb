class Api::UsersController < ApplicationController

  def index
    render json: {users: User.all}, status: :ok
  end
end
