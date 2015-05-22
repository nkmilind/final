class ArticlesController < ApplicationController
  def index
  	@articles = Article.all  
  end
  def new
    @article = Article.new
  end
  def create
  	Article.create(params["articles"])
    redirect_to articles_url
  end
  def show
  	@article = Article.find_by(id: params["id"]) 
  end
end
