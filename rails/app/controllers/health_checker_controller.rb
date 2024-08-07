class HealthCheckerController < ApplicationController
  def index
    render json: {
      nome: 'Willian'
    }
  end
end
