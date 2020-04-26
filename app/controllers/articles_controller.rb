class ArticlesController < ApplicationController
  #before_action :authenticate_user!

  def index
    @articles = Article.all   
  end

  def show 
      @article = Article.find(params[:id]) 
  end

  def new
      @article = Article.new
  end
   
  def create
      @article = Article.create(params.require(:article).permit(:title, :content))
    if @article.persisted?
      redirect_to @article, notice: "Article was created"
    else
      render 'new', notice: "Something went wrong"
      end
    end
end
