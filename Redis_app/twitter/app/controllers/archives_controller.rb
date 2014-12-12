class ArchivesController < ApplicationController

  def index

  end

  def create

    Resque.enqueue(ArchiveJob)
    redirect_to root_path
  end
end
