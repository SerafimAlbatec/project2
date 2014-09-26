class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  #before_action :authenticate_user!   ###Prepei na valw kodiko oposdipote
  #before_action :authenticate_admin!

  protect_from_forgery with: :exception
  
#  def after_sign_in_path_for(User)
#    "/surveys" # <- Path you want to redirect the user to.
#  end

#  def after_sign_in_path_for(Admin)
#    "/surveyor_gui/surveyforms" # <- Path you want to redirect the user to.
#  end
 def after_sign_in_path_for(resource)  #Kateutheian stin selida pou tou leme
  case resource
  when User then surveyor_path ##Mas paei sto survey 
  when Admin then surveyor_gui.surveyforms_path  #Mas paei sto GUI
  end
 end

#def after_sign_in_path_for(resource)
 # stored_location_for(resource) ||
 #   if resource.is_a?(Admin)
 #     'surveyor_gui/surveyforms'
 #   else
 #     surveyor_path
 #   end
#end




end
