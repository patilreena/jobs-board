class JobsController < ApplicationController

  def index
    @jobs = Job.page(params[:page]).per(5)
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params.require(:job).permit(:title, :company, :url))
    if @job.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def destroy
      @job = Job.find(params[:id])
      @job.destroy!
      redirect_to job_path
  end

end
