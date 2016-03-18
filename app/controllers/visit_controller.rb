class VisitController < ApplicationController
  def index
    @bookmark = Bookmark.find_by_slug(params[:slug])
    @bookmark.increment(:visit_count)
    @bookmark.save
    redirect_to @bookmark.url
  end
end
