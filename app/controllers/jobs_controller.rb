class JobsController < ApplicationController
  def index
    @jobs = Job.order('updated_at DESC')
  end
end
