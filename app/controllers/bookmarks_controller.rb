class BookmarksController < ApplicationController
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    bookmark = Bookmark.new(get_params)
    bookmark.save
    redirect_to list_path(get_params[:list_id])
  end

  private

  def get_params
    params.require(:bookmark).permit(:comment, :list_id, :movie_id)
  end
end
