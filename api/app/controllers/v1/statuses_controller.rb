require_dependency "api/application_controller"

module Api
  class V1::StatusesController < ApplicationController
    def show
      render json: { status: :ok }
    end
  end
end
