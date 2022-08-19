class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = Bookmark.where("list_id = #{@list.id}")
  end

  def index
    @lists = List.all
  end

  def create
    list = List.new(get_params)
    list.save
    redirect_to lists_path
  end

  private

  def get_params
    params.require(:list).permit(:name, :image_url)
  end
end
