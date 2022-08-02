class MembersController < ApplicationController
  before_action :test_field, :authenticate_user!

  def index
    super
    puts "Hello from members_controller#index"
  end

  def show
    render json: { message: "If you see this, you're in!" }
  end

  private

  def test_field
    puts "Hello from test_field"
    puts current_user
    request.env['warden-jwt_auth.token']
    raise
    puts "END from test_field"
  end
end
