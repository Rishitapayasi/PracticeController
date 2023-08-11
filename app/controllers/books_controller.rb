class BooksController < ApplicationController
  def index
    @books =  Book.all 
    #render plain: "wsarzyhsd"
    #render json: @books
    #render xml: @books
    #render body: "raw"
  end

  def show
    @books = Book.find(params[:id])
  end

end
