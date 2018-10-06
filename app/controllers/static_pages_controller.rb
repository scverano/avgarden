class StaticPagesController < ApplicationController
  include StaticPagesHelper

  def index
    if signed_in?
      redirect_to contacts_path
    end
  end
  
  def about
  end

  def contact
  end

  def our_work
  end
end
