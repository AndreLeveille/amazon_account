class WishListsController < ApplicationController
  def index
    @wish_lists = current_user.wish_lists
  end

  def show
  end

  def edit
    @wish_list = current_user.wish_lists.find(params[:id])
    # @wish_list = Wish_list.current_user.find(params[:id])
    # @wish_list = current_user.wish_lists_ids.find(params[:id])
    # @wish_list = current_user.wish_lists[]
  end

  def update
    @wish_list = current_user.wish_lists.find(params[:id])
    if @wish_list.update(list_params)
      redirect_to root_path
    else
      render :edit
    end 
  end 

  def create
    @wish_list = current_user.wish_lists.new(list_params)
    if @wish_list.save
      redirect_to wish_lists_path
    else 
      render :new
    end
  end 

  def new
    # @wish_list = Wish_list.new
    @wish_list = WishList.new
  end

  def destroy
    # @wish_list = current_user.wish_lists.destroy
    current_user.wish_lists.find(params[:id]).destroy
    # current_user.wish_lists.destroy
    redirect_to wish_lists_path
  end 

  private 

  def list_params
    params.require(:wish_list).permit(:name)
  end 

end
