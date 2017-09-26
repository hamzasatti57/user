class BooksController < ApplicationController

def create
    @person = Person.find(params[:person_id])
    @book = @person.books.create(book_params)
    redirect_to person_path(@person)
  end
 
  def destroy
    @person = Person.find(params[:person_id])
    @book = @person.books.find(params[:id])
    @book.destroy
    redirect_to person_path(@person)
  end
 
  private
    def book_params
      params.require(:book).permit(:name,:pages, :image)
    end

end
