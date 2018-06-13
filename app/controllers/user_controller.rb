# frozen_string_literal: true

# To control thw workflow in the user
class UserController < ApplicationController
  before_action :authenticate_user!

  def index
    @elders = Elder.all
    render template: 'users/index'

  end
end
