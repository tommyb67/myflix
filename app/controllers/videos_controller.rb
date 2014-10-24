class VideosController < ApplicationController
  before_filter do
    redirect_to :root if Rails.env.production?
  end

  layout "application"

  def home
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end

  def index
  end

end