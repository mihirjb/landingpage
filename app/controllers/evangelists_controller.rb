class EvangelistsController < ApplicationController
  
  before_filter :authenticate_admin!, :only => [:index]
  
  def index
    @ev = Evangelist.all
  end

  def new
    @evangelist = Evangelist.new
  end

  def create
      @evangelist = Evangelist.create(evangelist_params)
       if @evangelist.save 
         redirect_to "/evangelists/thanks", :notice => "Signed up successfully"
       else
         redirect_to  "/evangelists/new", :notice => "Sign up failed"
       end

     end
     

def thanks
  @saythanks = "Thank you for reaching out to us. We will get back to you as soon as possible"
end


     private 
    def evangelist_params
     params.require(:evangelist).permit(:email, :fullname, :phone, :action, :model, :value)
    end
end
