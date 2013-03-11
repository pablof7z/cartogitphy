class RepositoriesController < ApplicationController
  before_filter :load_repository, only: [:show]
  def index
    @repository = Repository.new
  end

  def create
    @repository = Repository.find_or_create_by(name: params[:repository][:name])

    # TODO Send to queue
    redirect_to @repository
  end

  def show
  end

  private

  def load_repository
    @repository = Repository.find(params[:id])
  end
end
