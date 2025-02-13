class Users::LinksController < ApplicationController
  include LinksHelper

  def create
    @link = Link.new(link_params)
    @link.user = current_user

    @link.save

    redirect_to controller: '/root', action: :index
  end

  def show
    param = params[:index].to_i

    link = current_user.links.find_by(index: param)

    if link.nil?
      redirect_to controller: '/root', action: :index
    else
      url = resolve_link link.link

      redirect_to url, allow_other_host: true
    end
  end

  private

  def link_params
    params.require(:link).permit(:link)
  end
end
