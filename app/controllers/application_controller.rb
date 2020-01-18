class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(resource)
    admin_products_path
    # return the path based on resource
  end

  # def after_sign_out_path_for(resource)
  #   # return the path based on resource
  # end
end
