class UsersController < ApplicationController

def show
 @name = current_user.name
 @articles = current_user.articles.page(params[:page]).per(5).order("created_at DESC")
end

end
