class AuthorsController < ApplicationController
  def index
  	@authors = Author.all  
  end
  def new
    @author = Author.new
  end

  def create
  	Author.create(params["author"])
    redirect_to authors_url
  end
  def edit
    @author = Author.find_by(id: params["id"])
  end
  def update
  	@author=Author.find_by(id: params["id"])
  	@author.update(params["author"])
    redirect_to authors_url
  end
    def destroy
  	@author = Author.find_by(id: params["id"])
  	@author.delete
    redirect_to authors_url
  end
end
