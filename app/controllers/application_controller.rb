class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
   devise_parameter_sanitizer.permit(:account_update, keys: [:role])
end
  protect_from_forgery with: :exception
  before_action :men
  before_action :woman
    
    rescue_from CanCan::AccessDenied do |exception|
    respond_to do |format|
        format.json { head :forbidden}
        format.html { redirect_to products_path, :alert => "Not authorized."}
    end
end 
    
  def men
      @men = Men.order(:name)
  end 
  def woman
      @woman = Woman.order(:name)
  end 
  def brands
      @brands = Product.pluck(:brand).sort.uniq
  end 
      def current_order
      if !session[:order_id].nil?
          Order.find(session[:order_id])
      else 
          Order.new
      end
  end 
end
