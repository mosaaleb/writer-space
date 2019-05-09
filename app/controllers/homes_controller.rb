class HomesController < ApplicationController
  def show
    @stories = Story.all    
  end
end