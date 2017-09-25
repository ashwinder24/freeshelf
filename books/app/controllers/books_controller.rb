class BooksController < ApplicationController

    before_action :confirm_logged_in
    
    def index
        @books = Book.all  
    end

    def show 
        @book = Book.find(params[:id])
    end
    
    def new 
        @book = Book.new
    end
    
    def create
        @book = Book.new(book_params)
        
        if @book.save
            flash[:notice] = "Book created successfully"
            redirect_to(:action => 'index')
        else
            render ('new')
        end
    end
    
    def edit
        
        @book = Book.find(params[:id])
        
    end
    
      
    def update
        
        @book = Book.find(params[:id])
        
        if @book.update_attributes(book_params)
            flash[:notice] = "Book updated successfully"
            redirect_to(:action => 'show', :id => @book.id)
        else
            
            render ('edit')
        end
    end
    
    def delete
        @book = Book.find(params[:id])
    end
    
    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        flash[:notice] = "Book #{@book.title} deleted successfully"
        redirect_to(:action => 'index')
 
    end
        
    private
        
        def book_params
            params.require(:book).permit(:title,:author,:description,:url)
        end
        
        
    
end

   