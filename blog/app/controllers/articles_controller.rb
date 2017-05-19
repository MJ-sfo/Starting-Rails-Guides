class ArticlesController < ApplicationController
  def new
  end

  def create
    # render plain: params[:article].inspect
    @article = Article.new(params[:article])
    # using Cap - referring to class Article, defined in app/models/article.rb

    @article.save  # returns boolean - whether the article was saved
    redirect_to @article
  end
end
