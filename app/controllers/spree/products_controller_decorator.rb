Spree::ProductsController.class_eval do

  include Scrivito::ControllerHelper
  before_action :load_product, only: [:show, :create_scrivito_obj]
  before_action :fetch_scrivito_object, only: [:show]
  
  def create_scrivito_obj
    ProductData.create_for(@product)
    redirect_to product_path(@product)
  end
  
  private
  
  def fetch_scrivito_object
    @obj =
      begin
        ProductData.find_for(@product)
      rescue Scrivito::ResourceNotFound
        # Nothing to do here
      end
  end
end 
