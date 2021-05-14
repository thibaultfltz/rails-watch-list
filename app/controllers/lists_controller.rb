class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def show
    @bookmark = Bookmark.new
    @bookmarks = Bookmark.all
    @movies = Movie.all
  end

  def index
    @lists = List.all
    @list = List.new
  end

  def new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :index
    end
  end

  def destroy
    @list.destroy
    redirect_to root_path
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :image)
  end
end
