class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :sidebar_values
  layout :layout_by_resource


  def sidebar_values
    @food_preferences = FoodPreference.all
    @food_types = FoodType.all
    @cuisines = Cuisine.all
  end

  def layout_by_resource
    if devise_controller?
      "authentication"
    else
      "application"
    end
  end

end
