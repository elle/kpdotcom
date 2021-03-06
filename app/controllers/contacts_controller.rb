class ContactsController < ApplicationController

  def new
    @section = 'contact'
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:notice] = "Message sent!"
      redirect_to '/contact'
    else
      render :action => "new"
    end
  end
  
end
