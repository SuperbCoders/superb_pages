class PagesController < ApplicationController

  # GET /pages/:id
  def show
    @page = SuperbPages.page_class_name.constantize.published.find_by!(slug: params[:id])
  end

end
