class MenusController < ApplicationController
	before_action :authenticate_user!

	 def new
	@resturant = Resturant.find(params[:resturant_id])
    @menu = Menu.new(resturant: @resturant)
  	end


	def index
	end

	def create
			@resturant = Resturant.find(params[:resturant_id])
    		@menu = current_user.menus.build(menu_params)
    		@menu.resturant = @resturant
    	if @menu.save
          	redirect_to @resturant
      	else
        	flash[:danger] = @menu.errors.full_messages.to_sentence
        	render 'new'
      	end
  end





  	def menu_params
    	params.require(:menu).permit(:name, :ingredient, :price, :value, :footrating,
    								 :cookingTime, :figure)
  	end

end

