class ArticlesController < ApplicationController
  skip_before_filter :auth, only: [:show, :index]
  def index
  	@articles = Article.all  
  end
  def new
    @article = Article.new
  end


  def edit
    @article = Article.find_by(id: params["id"])
  end

  def update
    @article = Article.find_by(id: params["id"])
    @article.update(params["article"])
    upload_photo
    redirect_to articles_url
  end

  def create
  	Article.create(params["articles"])
    redirect_to articles_url
  end
  def show
  	@article = Article.find_by(id: params["id"]) 
  end
end
