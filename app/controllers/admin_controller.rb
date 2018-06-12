# frozen_string_literal: true

# To control the workflow of the Admin
class AdminController < ApplicationController
  before_action :set_profile, only: %i[show edit update destroy]

  # GET /profiles
  # GET /profiles.json
  def index; end

  # GET /profiles/1
  # GET /profiles/1.json
  def show; end
end
