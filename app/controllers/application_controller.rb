class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  ### Change my location to ensure proper function
  ### This call back can take place in any controller
  ###  and also being customized ,to force auth in only
  ###  certain pages....
  ### For more info please read :
  ### _Devise github    : github.com/plataformatec/devise
  ### _Devise blog/news : blog.plataformatec.com.br/tag/devise
  before_action :authenticate_user!, :configure_permitted_parameters, if: :devise_controller?



  def page_vide
  	## /!\   Nb: definir ses pages statiques ici  c'est CACA!!!!
  	## /!\   do\/ob  (pour les aveugles c'est le regard colère)
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :name, :phone, :subscribe, :gender, :address, :citycode, :city) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
end
end
