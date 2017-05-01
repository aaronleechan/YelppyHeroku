class Resturant < ActiveRecord::Base
  has_many :reviews
  belongs_to :category
  belongs_to :user


  validates_presence_of :name
  validates_presence_of :description
  validates_presence_of :address1
  validates_presence_of :city
  validates_presence_of :state
  validates_presence_of :zipcode




  geocoded_by :full_address
  after_validation :geocode



  mount_uploader :image, ImageUploader

  def full_address
    [address1,city,state,zipcode].join(', ')
  end

  #Search Form
  def self.search(params)
    resturants = Resturant.where(category_id: params[:category].to_i)
    resturants = resturants.where("name like ? or description like ?", "%#{params[:search]}%","%#{params[:search]}%") if params[:search].present?
    resturants = resturants.near(params[:location],20) if params[:location].present?
    resturants
  end



  def avg_rating
    @avg_rating = 0

    if !reviews.blank?
      @avg_rating = reviews.average(:rating).round(2)
    end

    @avg_rating
  end

  def get_price_string
    @price_string = ""

    (1..price_range.to_i).each do |i|
      @price_string += "$"
    end

    if @price_string == ""
      @price_string = "N/A"
    end
    # return price string:
    @price_string
  end


end

