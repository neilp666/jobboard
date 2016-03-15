class JobsController < ApplicationController
  before_action :find_job, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(jobs_params)

    if @job.save
      redirect_to @job
    else
      render_to @job
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private 

  def jobs_params
    params.require(:job).permit(:title, :description, :company, :url)
  end

  def find_job 
    @job = job.find(params[:id])
  end
end
