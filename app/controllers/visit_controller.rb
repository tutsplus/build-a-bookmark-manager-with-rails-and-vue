class VisitController < ApplicationController
  def index
    @bookmark = Bookmark.find_by_slug(params[:slug])
    @bookmark.increment(:visit_count)
    @bookmark.save
    redirect_to "http://" + @bookmark.url
  end
end
