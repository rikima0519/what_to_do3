class ListsController < ApplicationController

  def index
    @lists = current_user.lists.includes(:user).order('day ASC')
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to :root
    else
      render action: :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

  def update
    list = List.find(params[:id])
    if list.update(list_params)
      redirect_to :root
    else
      render 'edit'
     end
  end

  def destroy
     list = List.find(params[:id])
     list.destroy
     redirect_to :root
  end

  private
    def list_params
      params.require(:list).permit(:title).merge(user_id: current_user.id)
    end

end
