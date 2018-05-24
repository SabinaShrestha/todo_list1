class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @lists = List.find(params[:id])
  end

  def new
    @lists = List.new
  end

  def create
   @lists = List.new(lists_params)
   if @lists.save
     redirect_to lists_path
   else
     render :new
   end
 end

 def edit
   @lists = List.find(params[:id])
   render :new
 end

 def update
   @lists = List.find(params[:id])
   if @lists.update(lists_params)
     redirect_to lists_path
   else
     render :new
   end
 end

 def destroy
   List.find(params[:id]).destroy
   redirect_to lists_path
 end

 private

   def lists_params
     params.require(:list).permit(:title, :place, :body, :complete)
   end
end
