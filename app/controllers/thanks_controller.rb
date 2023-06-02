class ThanksController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index]
  def index
    @thanks = policy_scope(Thank)
  end
end
