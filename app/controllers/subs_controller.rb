class SubsController < ApplicationController
  before_action :set_sub, only: [:show, :edit, :destroy, :update]
  def index
    @subs = Sub.all
  end

  def show
    #@sub = Sub.find(params[:id]) being called with before_action
  end

  def new
    @sub = Sub.new
    render partial: "form"
  end

  def create
    @sub = Sub.new(subs_params)
    if @sub.save
      redirect_to subs_path
    else
      render :new
    end
  end

  def edit
  #  @sub = Sub.find(params[:id]) being called with before_action
  render partial: "form"
  end

  def update
    #  @sub = Sub.find(params[:id]) being called with before_action
    if @sub.update(subs_params)
      redirect_to @sub
    else
      render :edit
  end
end 


  def destroy
    #  @sub = Sub.find(params[:id]) being called with before_action
    @sub.destroy
    redirect_to subs_path
  end

  private

  def subs_params
    #this is called a sanitizer.  it 'sanitizes' the users input
    params.require(:sub).permit(:name)
  end


  def set_sub
    @sub = Sub.find(params[:id])
  end

end
