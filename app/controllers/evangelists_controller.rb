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
         redirect_to root_path, :notice => "Signed up successfully"
       else
         redirect_to  "evangelists/index", :notice => "Signed up successfully"
       end

     end
     


     private 
    def evangelist_params
     params.require(:evangelist).permit(:email, :fullname, :phone)
    end
end
