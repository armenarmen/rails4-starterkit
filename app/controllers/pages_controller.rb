class PagesController < ApplicationController
  skip_authorization_check
  skip_before_action :authenticate_user!

  def home
  end

  def error
    redirect_to root_path if flash.empty?
  end
end