class BookmarksController < ApplicationController

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  # when you make a new one - you know which list its being added to, you have a blank bookm ark and you have all the movies that coule be added to the list.
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    # create a bookmark with comment and movie_id
    # it's still missing the list id
    # @bookmark.list_id = params[:list_id] # assign the params of category list to the bookmark.this assignment is same as @list = List.find(params[:list_id])
    @bookmark.list = List.find(params[:list_id])
    #we assign to our new bookmark a list id
    if @bookmark.save
      redirect_to list_path(@bookmark.list)
    else
      redirect_to new_list_bookmark_path(@bookmark.list)
    end
  end

  private
  
  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
