class Users::IndexController < ApplicationController
  before_action :authenticate_user!

  PER = 5

  # トップページ
  def index

  end

  def edit
    @user = current_curator
  end

end