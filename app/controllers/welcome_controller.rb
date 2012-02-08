class WelcomeController < ApplicationController
  layout 'welcome'
  # GET /welcomes
  # GET /welcomes.json
  def index

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @welcomes }
    end
  end

end
