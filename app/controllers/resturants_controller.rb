class ResturantsController < ApplicationController
	before_action :authenticate_user!,only:[:create,:new]
	before_action :is_admin?, only: [:destroy]

	def index
		#visitor_latitude = request.location.latitude
		visitor_latitude = 37.3382082
		#visitor_longitude = request.location.longitude
		visitor_longitude =	-121.8863286


		
		#@resturants = @resturant.nearbys([visitor_latitude,visitor_longitude],20)
		
		@resturants = Resturant.near([visitor_latitude,visitor_longitude],20)

		#@resturants = Resturant.all
	end

	def showall
		@resturants = Resturant.all
	end

	def new
		@resturant = Resturant.new
	end

	def create
		#check whether the restuarant is already in the database or not
  		#only checking whether a restaurant with the phone exists or not

		@resturant = current_user.resturants.build(resturant_params)
			#@resturant = Resturant.new(resturant_params)



			if @resturant.save
					redirect_to @resturant
			else
				flash[:danger] = @resturant.errors.full_messages.to_sentence
				render 'new'
			end

	end

	def edit
		@resturant = Resturant.find(params[:id])
	end

	def update
		@resturant = Resturant.find(params[:id])
		@resturant.update(resturant_params)
		redirect_to @resturant
	end

	def destroy
		@resturant = Resturant.find(params[:id])
		@resturant.destroy
		redirect_to root_path
	end

	def show
		@resturant = Resturant.find(params[:id])
		@reviews = Review.where(resturant_id: @resturant)
		if @reviews.blank?
			@avg_rating = 0
		else
			@avg_rating = @reviews.average(:rating).round(2)
		end

		@menus = Menu.where(resturant_id: @resturant)

	end

	def search
		@resturants = Resturant.search(params)
	end

	private
	def resturant_params
		params.require(:resturant).permit(:name,  :description, :category_id, :address1, :address2, :city,
																			:image, :state, :zipcode, :phone, :email, :price_range);
	end

	def is_admin?
		if !current_user.try(:admin?)
			flash[:danger] = "You are not authorized to delete"
			redirect_to root_path
		end
	end
end
