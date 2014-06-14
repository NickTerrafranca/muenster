class JobsController < ApplicationController
  def index
    @jobs = Job.order('updated_at DESC')
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
    @companies = Company.all
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to @job
    else
      flash.now[:notice] = "Something whent wrong, you posting could not be saved."
      render :new
    end
  end

  private

  def job_params
      params.require(:job).permit(:company_id, :title, :description)
  end
end
