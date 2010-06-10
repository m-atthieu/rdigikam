ActionController::Routing::Routes.draw do |map|
  map.resources :file_paths
  map.resources :thumbnails
  map.resources :unique_hashes
  map.resources :tags
  map.resources :image_copyrights
  map.resources :image_haar_matrices
  map.resources :image_properties
  map.resources :image_metadatas
  map.resources :image_informations
  map.resources :image_comments
  map.resources :image_positions
  map.resources :images
  map.resources :albums
  map.resources :album_roots
  map.resources :album_path
  map.resources :album_images

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  map.root :controller => "application"

  # See how all your routes lay out with "rake routes"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  map.connect 'ext/:controller/:id', :action => 'show', :format => 'json'
  map.connect 'ext/:controller', :action => 'show', :format => 'json'

end
