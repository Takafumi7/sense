class ArticlesController < ApplicationController

before_action :move_to_index, except: :index

def index
@articles = Article.includes(:user).order("created_at DESC").page(params[:page]).per(5)
end

def new
end

def create
  Article.create(user_id: current_user.id, image: article_params[:image], text: article_params[:text])
end


def destroy
    article = Article.find(params[:id])
   if article.user_id == current_user.id
     article.destroy
   end
end


private
def article_params
  params.permit(:image , :text)
end

def move_to_index
  redirect_to action:  :index unless user_signed_in?

end

end
