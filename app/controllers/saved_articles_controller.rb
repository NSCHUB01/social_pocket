class SavedArticlesController < ApplicationController
	
	# respond_to :json
	def index
    # user owner of the saved_articles
    @user = params[:user_id]
    # current_user is the viewer of the page
    redirect_to sign_up_path and return unless current_user		
			# binding.pry
			# @user = User.find(params[:id])
			# @user = current_user
    @saved_articles = current_user.articles

    respond_to do |format|
		  format.html # index.html.erb
      # format.json { binding.pry ; render json: saved_articles }
		  format.json { render json: @saved_articles }
    end
  end      
end