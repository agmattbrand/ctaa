class TimelinesController < ApplicationController
	protect_from_forgery

	def index
    respond_to do |format|
      format.js { render :json => { :foo => "bar" } }
    end    
	end
end
