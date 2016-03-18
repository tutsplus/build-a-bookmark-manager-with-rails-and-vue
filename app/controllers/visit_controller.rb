class VisitController < ApplicationController
  def index
    @bookmark = Bookmark.find_by_slug(params[:slug])
    redirect_to @bookmark.url
  end
end
