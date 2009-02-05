Merb.logger.info("Compiling routes...")
Merb::Router.prepare do
  resource :welcome, :controller => "welcome"

  # Adds the required routes for merb-auth using the password slice
  #slice(:merb_auth_slice_password, :name_prefix => nil, :path_prefix => "")
  
  # Change this for your home page to be available at /
  # match('/').to(:controller => 'whatever', :action =>'index')
end
