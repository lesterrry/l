class Users::LinksController < ApplicationController
    def create
      @link = Link.new(link_params)
      @link.user = current_user

      @link.save

      redirect_to controller: '/root', action: :index
    end

  private

    def link_params
      params.require(:link).permit(:index, :link)
    end
end
