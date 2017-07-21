class BodiesController < ApplicationController
	
  def new
    @page_title = 'Add Body'
    @body = Body.new

  end

  def create
    @body = Body.new(body_params)
    if @body.save
      flash[:notice] = 'Body Created'
      redirect_to admin_bodies_path
    else
    render 'new'
    end  
  end

  def edit
    @body = Body.find(params[:id])
  end

  def update
    @body = Body.find(params[:id])
    if @body.update(body_params)
    flash[:notice] = 'Body Updated'

     redirect_to admin_bodies_path
    else
    render 'new'
    end 
  end 

  def destroy
    @body = Body.find(params[:id])
    @body.destroy

    flash[:notice] = 'Body Removed'

     redirect_to admin_bodies_path
  end
  def index
    if params[:search]
    @bodies = Body.search(params[:search]).all.order('created_at DESC').paginate(:per_page => 10, :page=> params[:page])
    else
      @bodies = Body.all.order('created_at DESC').paginate(:per_page => 10, :page=> params[:page])
    end
  end
  private
  def body_params
    params.require(:body).permit(:name, :body_number, :cause_of_death, :date_of_birth, :date_of_death, :deceased_prior_address, :health_history)
  end
end