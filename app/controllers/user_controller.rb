class UserController < ApplicationController
  def show
  end

  def account
    @events = Event.all
  end
end
