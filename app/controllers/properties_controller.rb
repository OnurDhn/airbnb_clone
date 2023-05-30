class PropertiesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index :show]
  def index
    @properties = Property.all

  def show
    @property = Property.find(params[:id])
  end
end