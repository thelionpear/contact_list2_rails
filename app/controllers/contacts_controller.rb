class ContactsController < ApplicationController
  def index
    @contacts = Contact.all 
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new 
  end

  def create
    @contact = Contact.new(contacts_params)
 
    if @contact.save
      redirect_to contacts_path
    else
      render :new
    end
  end
 
  private
 
    def contacts_params
      params.require(:contact).permit(:name, :age, :hair_color, :eye_color, :gender, :alive)
    end
end
