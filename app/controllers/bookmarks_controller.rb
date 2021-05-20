class BookmarksController < ApplicationController
  # before_action :set_list, only: [:destroy]
  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(list_params)
    @list = List.find(params[:list_id])
    @bookmark.list = @list
    if @bookmark.save
      redirect_to list_path(@list), notice: 'Bookmark was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), notice: 'Bookmark was successfully destroyed.'
  end

  private

  # def set_list
  #   @bookmark = Bookmark.find(params[:id])
  # end

  def list_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end

end
