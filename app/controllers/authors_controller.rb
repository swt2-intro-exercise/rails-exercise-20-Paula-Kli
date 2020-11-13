class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end
  def edit
    @author = Author.find(params[:id])
  end

  def create
    @author = Author.new(article_params)
    if @author.save
      redirect_to  @author
    else
      render 'new'
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  def index
    @author = Author.all
  end
  private
    def article_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
