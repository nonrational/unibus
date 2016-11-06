class Api::StatusesController < ApplicationController
  def show
    render json: { status: :ok }
  end
end
