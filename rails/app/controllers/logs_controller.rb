class LogsController < ApplicationController
  def create
    Log.create!(message: params[:message])
    head :created
  end

  def index
    logs = Log.all
    render json: logs
  end
end
