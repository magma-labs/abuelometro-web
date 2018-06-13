# frozen_string_literal: true

# To control thw workflow in the user
class UserController < ApplicationController
  before_action :authenticate_user!, only: [:index]

  def index
    @elders = Elder.all
    render template: 'users/index'

  end

  def caretaker
    render template: 'users/form-takecare'
  end
end
