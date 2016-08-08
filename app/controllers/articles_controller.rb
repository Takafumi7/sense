class ArticlesController < ApplicationController

before_action :move_to_index, except: :index

def index
@articles = Article.order("created_at DESC").page(params[:page]).per(5)
end

def new
end

def create
  Article.create(article_params)
end

private
def article_params
  params.permit(:user_id, :image , :text)
end

def move_to_index
  redirect_to action:  :index unless user_signed_in?

end

end
