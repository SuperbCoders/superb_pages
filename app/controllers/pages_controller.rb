class PagesController < ApplicationController

  # GET /pages/:id
  def show
    @page = SuperbPages::Page.published.find_by!(slug: params[:id])
  end

end
