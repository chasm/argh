class ArticlesController < ApplicationController
  before_action :get_article, except: [ :index, :create ]
  
  def index
    articles = Article.includes( :comments ).all
    
    render json: articles.to_json( include: [:comments] )
  end

  def show
    article = Article.includes( :comments ).find( params[:id] )
    
    render json: article.to_json( include: [:comments] )
  end

  def create
  end

  def update
  end

  def destroy
  end
  
  private
  
  def get_article
    @article = Article.find(params[:id])
  end
end
