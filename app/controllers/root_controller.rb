class RootController < ApplicationController
  before_action :authenticate_user!

  def index
    @link = Link.new
  end
end
