class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def edit
    @company = Company.find(params[:id])
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to @company
    else
      flash.now[:notice] = "Something whent wrong, you posting could not be saved."
      render :new
    end
  end

  def update
    @company = Company.find(params[:id])
    @company.update(company_params)
    redirect_to @company
  end

  private

  def company_params
      params.require(:company).permit(:name, :location, :industry, :description)
  end
end
