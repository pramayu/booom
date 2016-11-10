Rails.application.routes.draw do
  post 'user/store/:id/follow_user', to: 'relationships#follow_user', as: :follow_user

  post 'user/store/:id/unfollow_user', to: 'relationships#unfollow_user', as: :unfollow_user
  get 'user/delete/:id', to: 'users#delete_user'

  get 'password_resets/new'

  get 'password_resets/edit'

  mount ActionCable.server => '/cable'

  resources :home, only: [:index]
  #themes routes
  resources :themes do
    resources :comments
    resources :reviews, only: [:create]
    member do
      get 'screenshot/:screenshot_id/delete', to: 'themes#delete_screenshot', as: :delete_screenshot
      get 'broke/:broke_id/delete', to: 'themes#delete_broke', as: :delete_broke
      get :theme_suka, to: 'themes#theme_suka'
      get :theme_unsuka, to: 'themes#theme_unsuka'
      get :delete_theme, to: 'themes#delete_theme'
      put :like, to: 'themes#upvote'
      put :dislike, to: 'themes#downvote'
    end
  end

  get 'themes/this/:recent', to: 'themes#index', as: :themes_recent
  get 'themes/that/:recoms', to: 'themes#index', as: :themes_recoms

  resources :codes do
    resources :comments
    resources :reviews, only: [:create]
    member do 
      get 'screenshot/:screenshot_id/delete', to: 'codes#delete_screenshot', as: :delete_cdscreenshot
      get 'broke/:broke_id/delete', to: 'codes#delete_broke', as: :delete_cdbroke
      get :delete_code, to: 'codes#delete_code'
      get :code_suka, to: 'codes#code_suka'
      get :code_unsuka, to: 'codes#code_unsuka'
      put :like, to: 'codes#upvote'
      put :dislike, to: 'codes#downvote'
    end
  end

  get 'codes/this/:recent', to: 'codes#index', as: :codes_recent
  get 'codes/that/:recoms', to: 'codes#index', as: :codes_recoms

  resources :graphics do
    resources :comments
    resources :reviews, only: [:create]
    member do 
      get 'screenshot/:screenshot_id/delete', to: 'graphics#delete_screenshot', as: :delete_ghscreenshot
      get 'broke/:broke_id/delete', to: 'graphics#delete_broke', as: :delete_ghbroke
      get 'delete_graphic', to: 'graphics#delete_graphic'
      get :graphic_suka, to: 'graphics#graphic_suka'
      get :graphic_unsuka, to: 'graphics#graphic_unsuka'
      put :like, to: 'graphics#upvote'
      put :dislike, to: 'graphics#downvote'
    end
  end

  get 'graphics/this/:recent', to: 'graphics#index', as: :graphics_recent
  get 'graphics/that/:recoms', to: 'graphics#index', as: :graphics_recoms

  resources :t3ds do
    resources :comments
    resources :reviews, only: [:create]
    member do
      get 'screenshot/:screenshot_id/delete', to: 't3ds#delete_screenshot', as: :delete_t3screenshot
      get 'broke/:broke_id/delete', to: 't3ds#delete_broke', as: :delete_t3broke
      get :delete_t3d, to: 't3ds#delete_t3d'
      get :t3d_suka, to: 't3ds#t3d_suka'
      get :t3d_unsuka, to: 't3ds#t3d_unsuka'
      put :like, to: 't3ds#upvote'
      put :dislike, to: 't3ds#downvote'
    end
  end

  get 't3dreams/this/:recent', to: 't3ds#index', as: :t3ds_recent
  get 't3ds/that/:recoms', to: 't3ds#index', as: :t3ds_recoms

  resources :videofxes do
    resources :comments
    resources :reviews, only: [:create]
    member do 
      get 'videm/:videm_id/delete', to: 'videofxes#delete_videm', as: :delete_videm
      get 'broke/:broke_id/delete', to: 'videofxes#delete_broke', as: :delete_vbroke
      get :delete_videofx, to: 'videofxes#delete_videofx'
      get :video_suka, to: 'videofxes#video_suka'
      get :video_unsuka, to: 'videofxes#video_unsuka'
      put :like, to: 'videofxes#upvote'
      put :dislike, to: 'videofxes#downvote'
    end
  end
  get 't3dreams', to: 't3ds#index'
  get 't3dreams/new', to: 't3ds#new'
  get 'videofxes/this/:recent', to: 'videofxes#index', as: :videofxes_recent
  get 'videofxes/that/:recoms', to: 'videofxes#index', as: :videofxes_recoms

  resources :fonts do
    resources :comments
    resources :reviews, only: [:create]
    member do
      get 'screenshot/:screenshot_id/delete', to: 'fonts#delete_screenshot', as: :delete_ftscreenshot
      get 'broke/:broke_id/delete', to: 'fonts#delete_broke', as: :delete_ftbroke
      get :delete_font, to: 'fonts#delete_font'
      get :font_suka, to: 'fonts#font_suka'
      get :font_unsuka, to: 'fonts#font_unsuka'
      put :like, to: 'fonts#upvote'
      put :dislike, to: 'fonts#downvote'
    end
  end

  get 'fonts/this/:recent', to: 'fonts#index', as: :fonts_recent
  get 'fonts/that/:recoms', to: 'fonts#index', as: :fonts_recoms
  

   resources :courses do
    resources :comments
    resources :reviews, only: [:create]
    resources :headsecs do
      resources :lectures
    end
    member do
      get 'freepi/:freepi_id/delete', to: 'courses#delete_trailer', as: :delete_trailer
      get 'cofile/:cofile_id/delete', to: 'courses#delete_cofile', as: :delete_cofile
      get :delete_course, to: 'courses#delete_course'
      get :course_suka, to: 'courses#course_suka'
      get :course_unsuka, to: 'courses#course_unsuka'
      put :like, to: 'courses#upvote'
      put :dislike, to: 'courses#downvote'
    end
  end

  get 'courses/this/:recent', to: 'courses#index', as: :courses_recent
  get 'courses/that/:recoms', to: 'courses#index', as: :courses_recoms
  resources :akusukas, only: [:new, :create]
  resources :teams do
    resources :messagereviewers
  end

  resources :carts
  resources :line_items
  resources :payment_noties
  resources :categories
  get 'account/categories/new', to: 'categories#new', as: :category_new
  get 'account/categories/:id/edit', to: 'categories#edit', as: :category_edit
  get 'account/categories/:id/destroy', to: 'categories#delete_category', as: :delete_category

  resources :subcategories
  get 'account/subcategories/new', to: 'subcategories#new', as: :subcategory_new
  get 'account/subcategories/:id/edit', to: 'subcategories#edit', as: :subcategory_edit
  get 'account/subcategories/:id/destroy', to: 'subcategories#delete_subcategory', as: :delete_subcategory
  
  resources :browsers
  get 'account/browsers/new', to: 'browsers#new', as: :browser_new
  get 'account/browsers/:id/edit', to: 'browsers#edit', as: :browser_edit
  get 'account/browsers/:id/destroy', to: 'browsers#delete_browser', as: :delete_browser

  resources :dependencies
  get 'account/dependencies/new', to: 'dependencies#new', as: :dependency_new
  get 'account/dependencies/:id/edit', to: 'dependencies#edit', as: :dependency_edit
  get 'account/dependencies/:id/destroy', to: 'dependencies#delete_dependency', as: :delete_dependency

  resources :compatibles
  get 'account/compatibles/new', to: 'compatibles#new', as: :compatible_new
  get 'account/compatibles/:id/edit', to: 'compatibles#edit', as: :compatible_edit
  get 'account/compatibles/:id/destroy', to: 'compatibles#delete_compatible', as: :delete_compatible

  resources :includes
  get 'account/includes/new', to: 'includes#new', as: :include_new
  get 'account/includes/:id/edit', to: 'includes#edit', as: :include_edit
  get 'account/includes/:id/destroy', to: 'includes#delete_include', as: :delete_include

  resources :codesubs
  get 'account/codesubs/new', to: 'codesubs#new', as: :codesub_new
  get 'account/codesubs/:id/edit', to: 'codesubs#edit', as: :codesub_edit
  get 'account/codesubs/:id/destroy', to: 'codesubs#delete_codesub', as: :delete_codesub

  resources :softopens
  get 'account/softopens/new', to: 'softopens#new', as: :softopen_new
  get 'account/softopens/:id/edit', to: 'softopens#edit', as: :softopen_edit
  get 'account/softopens/:id/destroy', to: 'softopens#delete_softopen', as: :delete_softopen

  resources :industries
  get 'account/industries/new', to: 'industries#new', as: :industry_new
  get 'account/industries/:id/edit', to: 'industries#edit', as: :industry_edit
  get 'account/industries/:id/destroy', to: 'industries#delete_industry', as: :delete_industry

  resources :softopen3ds
  get 'account/softopen3ds/new', to: 'softopen3ds#new', as: :softopen3d_new
  get 'account/softopen3ds/:id/edit', to: 'softopen3ds#edit', as: :softopen3d_edit
  get 'account/softopen3ds/:id/destroy', to: 'softopen3ds#delete_softopen3d', as: :delete_softopen3d

  resources :modelsubs
  get 'account/modelsubs/new', to: 'modelsubs#new', as: :modelsub_new
  get 'account/modelsubs/:id/edit', to: 'modelsubs#edit', as: :modelsub_edit
  get 'account/modelsubs/:id/destroy', to: 'modelsubs#delete_modelsub', as: :delete_modelsub

  resources :genres
  get 'account/genres/new', to: 'genres#new', as: :genre_new
  get 'account/genres/:id/edit', to: 'genres#edit', as: :genre_edit
  get 'account/genres/:id/destroy', to: 'genres#delete_genre', as: :delete_genre

   resources :encodes
  get 'account/encodes/new', to: 'encodes#new', as: :encode_new
  get 'account/encodes/:id/edit', to: 'encodes#edit', as: :encode_edit
  get 'account/encodes/:id/destroy', to: 'encodes#delete_encode', as: :delete_encode

  resources :latars
  get 'account/latars/new', to: 'latars#new', as: :latar_new
  get 'account/latars/:id/edit', to: 'latars#edit', as: :latar_edit
  get 'account/latars/:id/destroy', to: 'latars#delete_latar', as: :delete_latar

  resources :vidsubs
  get 'account/vidsubs/new', to: 'vidsubs#new', as: :vidsub_new
  get 'account/vidsubs/:id/edit', to: 'vidsubs#edit', as: :vidsub_edit
  get 'account/vidsubs/:id/destroy', to: 'vidsubs#delete_vidsub', as: :delete_vidsub

  resources :framerates
  get 'account/framerates/new', to: 'framerates#new', as: :framerate_new
  get 'account/framerates/:id/edit', to: 'framerates#edit', as: :framerate_edit
  get 'account/framerates/:id/destroy', to: 'framerates#delete_framerate', as: :delete_framerate

  resources :aeplugins
  get 'account/aeplugins/new', to: 'aeplugins#new', as: :aeplugin_new
  get 'account/aeplugins/:id/edit', to: 'aeplugins#edit', as: :aeplugin_edit
  get 'account/aeplugins/:id/destroy', to: 'aeplugins#delete_aeplugin', as: :delete_aeplugin

  resources :languages
  get 'account/languages/new', to: 'languages#new', as: :language_new
  get 'account/languages/:id/edit', to: 'languages#edit', as: :language_edit
  get 'account/languages/:id/destroy', to: 'languages#delete_language', as: :delete_language

  resources :conversations do 
    member do
      post :reply
      post :trash
      post :untrash
    end
  end

  resources :notes
  get 'account/notes', to: 'accounts#note', as: :note_account
  get 'account/notes/:id/racoon', to: 'accounts#note_edit', as: :note_edit
  get 'account/destroy/:id', to: 'notes#a_destroy'
  get 'account/b_destroy/:note_id/:id', to: 'notes#b_destroy'
  get 'account/shared/:id', to: 'notes#shared'

  resources :vacancies
  resources :teams
  get 'account/teams/data/new', to: 'teams#new', as: :team_account
  get 'account/teams/data/:id', to: 'teams#edit', as: :team_edit
  get 'account/teams/:id/destroy', to: 'teams#delete_team'
  get 'account/teams/data/:id/members', to: 'teams#show', as: :show_team
  get 'account/products/all_themes/:themes', to: 'accounts#all_product', as: :all_themes
  get 'account/products/delete/:id', to: 'themes#delete_by_admin'
  get 'account/products/all_codes/:codes', to: 'accounts#all_product', as: :all_codes
  get 'account/products/delete_code/:id', to: 'codes#delete_by_admin'
  get 'account/products/all_graphics/:graphics', to: 'accounts#all_product', as: :all_graphics
  get 'account/products/delete_graphic/:id', to: 'graphics#delete_by_admin'
  get 'account/products/all_t3ds/:t3ds', to: 'accounts#all_product', as: :all_t3ds
  get 'account/products/delete_t3d/:id', to: 't3ds#delete_by_admin'
  get 'account/products/all_videofxes/:videofxes', to: 'accounts#all_product', as: :all_videofxes
  get 'account/products/delete_videofx/:id', to: 'videofxes#delete_by_admin'
  get 'account/products/all_fonts/:fonts', to: 'accounts#all_product', as: :all_fonts
  get 'account/products/delete_font/:id', to: 'fonts#delete_by_admin'
  get 'account/products/all_courses/:courses', to: 'accounts#all_product', as: :all_courses
  get 'account/products/delete_course/:id', to: 'courses#delete_by_admin'

  get 'account/transaction/order/completed', to: 'accounts#order', as: :data_order
  get 'account/transaction/data_1/:week/order/completed', to: 'accounts#order', as: :data_order_week
  get 'account/transaction/data_2/:day/order/completed', to: 'accounts#order', as: :data_order_day
  get 'account/transaction/data_3/:month/order/completed', to: 'accounts#order', as: :data_order_month

  get 'account/vacancies/data_1/:programmer', to: 'accounts#all_vacancy', as: :all_vacancy_programmer
  get 'account/vacancies/data_2/:designer', to: 'accounts#all_vacancy', as: :all_vacancy_designer
  get 'account/vacancies/data_3/:animator', to: 'accounts#all_vacancy', as: :all_vacancy_animator
  get 'account/vacancies/data_4/:network', to: 'accounts#all_vacancy', as: :all_vacancy_network
  get 'account/items', to: 'accounts#free_item', as: :free_item
  get 'account/items/:id', to: 'accounts#free_destroy', as: :destroy_free
  get 'vacancies/data/search', to: 'vacancies#search_vacancy', as: :vacancies_search
  
  #freeitem

  get 'themes/freeitem/:id', to: 'themes#free_theme'
  get 'codes/freeitem/:id', to: 'codes#free_code'
  get 'graphics/freeitem/:id', to: 'graphics#free_graphic'
  get 't3ds/freeitem/:id', to: 't3ds#free_t3d'
  get 'videofxes/freeitem/:id', to: 'videofxes#free_videofx'
  get 'fonts/freeitem/:id', to: 'fonts#free_font'
  get 'courses/freeitem/:id', to: 'courses#free_course'

  get 'delete/carts/:id', to: 'line_items#delete', as: :line_items_delete
  
  get 'themes/:id/upload', to: 'themes#upload', as: :upload
  get 'codes/:id/upload', to: 'codes#upload', as: :upload_code
  get 'graphics/:id/upload', to: 'graphics#upload', as: :upload_graphic
  get 't3dreams/:id/upload', to: 't3ds#upload', as: :upload_t3d
  get 'videofxes/:id/upload', to: 'videofxes#upload', as: :upload_videofx
  get 'fonts/upload', to: 'fonts#new'
  get 'courses/:id/upload', to: 'courses#upload', as: :upload_course
  get 'courses/:id/curriculum', to: 'courses#manage_course', as: :manage_course

  get 'themes/item/:id', to: 'themes#item', as: :item
  get 'codes/item/:id', to: 'codes#item', as: :item_code
  get 'graphics/item/:id', to: 'graphics#item', as: :item_graphic
  get 't3dreams/item/:id', to: 't3ds#item', as: :item_t3d
  get 'videofxes/item/:id', to: 'videofxes#item', as: :item_videofx
  get 'fonts/item/:id', to: 'fonts#item', as: :item_font
  get 'courses/item/:id', to: 'courses#item', as: :item_course

  get 'themes/item/:id/screenshot', to: 'themes#screenshot', :as => :screenshot
  get 'codes/item/:id/screenshot', to: 'codes#screenshot', :as => :screenshot_code
  get 'graphics/item/:id/screenshot', to: 'graphics#screenshot', :as => :screenshot_graphic
  get 't3dreams/item/:id/screenshot', to: 't3ds#screenshot', :as => :screenshot_t3d
  get 'videofxes/item/:id/screenshot', to: 'videofxes#screenshot', :as => :screenshot_videofx
  get 'fonts/item/:id/screenshot', to: 'fonts#screenshot', :as => :screenshot_font

  get 'themes/aprroved/:id/theme', to: 'themes#success_reviewer', as: :success_reviewer
  get 'codes/aprroved/:id/code', to: 'codes#success_reviewer', as: :cdsuccess_reviewer
  get 't3dreams/aprroved/:id/t3dream', to: 't3ds#success_reviewer', as: :t3success_reviewer
  get 'videofxes/aprroved/:id/videofx', to: 'videofxes#success_reviewer', as: :vsuccess_reviewer
  get 'fonts/aprroved/:id/font', to: 'fonts#success_reviewer', as: :fsuccess_reviewer
  get 'courses/aprroved/:id/course', to: 'courses#success_reviewer', as: :cvsuccess_reviewer
  get 'graphics/aprroved/:id/graphic', to: 'graphics#success_reviewer', as: :gsuccess_reviewer

  get 'themes/reject/:id/theme', to: 'themes#reject_reviewer', as: :treject_reviewer
  get 'codes/reject/:id/code', to: 'codes#reject_reviewer', as: :creject_reviewer
  get 't3dreams/reject/:id/t3dream', to: 't3ds#reject_reviewer', as: :t3reject_reviewer
  get 'videofxes/reject/:id/videofx', to: 'videofxes#reject_reviewer', as: :vreject_reviewer
  get 'fonts/reject/:id/font', to: 'fonts#reject_reviewer', as: :freject_reviewer
  get 'courses/reject/:id/course', to: 'courses#reject_reviewer', as: :cvreject_reviewer
  get 'graphics/reject/:id/graphic', to: 'graphics#reject_reviewer', as: :greject_reviewer

  resources :users, only: [:create, :edit, :update] do
    resources :collections, only: [:new, :create, :edit, :update, :destroy, :show]
    resources :contacts, only: [:new, :create] 
    resources :withdrawals, only: [:create, :update]
  end
  get 'account/:user_id/wishlist/:id/wishitem', to: 'collections#show', as: :show_collection
  # resources :collections, only: [:destroy]
  get 'sign_up', to: 'users#sign_up', as: :sign_up
  get 'account/:id/profile/edit', to: 'users#edit', as: :profile
  resources :sessions, only: [:new, :create, :destroy]
  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
  resources :accounts
  get 'account/dashboard', to: 'accounts#dashboard', as: :dashboard
  get 'account/purchase', to: 'accounts#download', as: :purchase
  get 'account/dashboard/:id/products', to: 'accounts#item_product', as: :item_product
  get 'account/dashboard/upload', to: 'accounts#upload_page', as: :upload_page
  get 'email_active', to: 'checks#email_active', as: :email_active
  get 'account/:id/personal/data', to: 'accounts#personal', as: :personal
  # put 'account/:id', to: 'accounts#modify', as: :modify
  get 'account/:id/sosmed', to: 'accounts#sosmed', as: :sosmed
  get 'account/:id/secure', to: 'accounts#secure', as: :secure
  get 'account/:id/store_front', to: 'accounts#store_front', as: :store_front
  get 'user/store/:id', to: 'accounts#store', as: :store
  get 'user/follower/:id', to: 'accounts#follower', as: :follower
  get 'user/following/:id', to: 'accounts#following', as: :following
  get 'account/:id/wishlist', to: 'accounts#wishlist', as: :wishlist
  get 'notifications/:id/link_through', to: 'notifications#link_through', as: :link_through
  get 'account/:id/beseller', to: 'accounts#beseller', as: :beseller
  get 'account/:id/bejobpost', to: 'accounts#bejobpost', as: :bejobpost
  get 'account/:id/follow/activity', to: 'accounts#item_follower', as: :item_follower
  get 'account/:id/favorite/activity', to: 'accounts#item_like', as: :item_like
  get 'wishlists/:id/wish', to: 'themes#wishlist', as: :wish
  get 'account/:id/pending', to: 'accounts#pending_approv', as: :pending_approv
  get 'account/:id/rejected', to: 'accounts#item_reject', as: :item_reject

  get 'account/reviews/themes', to: 'reviewers#theme_review', as: :theme_review
  get 'account/reviews/codes', to: 'reviewers#code_review', as: :code_review
  get 'account/reviews/graphics', to: 'reviewers#graph_review', as: :graph_review
  get 'account/reviews/fonts', to: 'reviewers#font_review', as: :font_review
  get 'account/reviews/t3dreams', to: 'reviewers#t3d_review', as: :t3d_review
  get 'account/reviews/videos', to: 'reviewers#video_review', as: :video_review
  get 'account/reviews/courses', to: 'reviewers#course_review', as: :course_review
  # theme
  get 'account/review/:theme_id', to: 'reviewers#add_to_pro', as: :add_to_pro
  get 'account/ersdfde786/:theme_id', to: 'reviewers#del_to_pro', as: :del_to_pro
  # code
  get 'account/review34/:code_id', to: 'reviewers#add_to_pro_code', as: :add_to_pro_code
  get 'account/ersdfd34e786/:code_id', to: 'reviewers#del_to_pro_code', as: :del_to_pro_code
  # graphic
  get 'account/sgegh7jhsf/:graphic_id', to: 'reviewers#add_to_pro_graph', as: :add_to_pro_graph
  get 'account/sgegh7djs/:graphic_id', to: 'reviewers#del_to_pro_graph', as: :del_to_pro_graph
  # font
  get 'account/sgfhgfdhe/:font_id', to: 'reviewers#add_to_pro_font', as: :add_to_pro_font
  get 'account/rgdr656/:font_id', to: 'reviewers#del_to_pro_font', as: :del_to_pro_font
  # t3d
  get 'account/hdwrty/:t3d_id', to: 'reviewers#add_to_pro_t3d', as: :add_to_pro_t3d
  get 'account/oud65yd/:t3d_id', to: 'reviewers#del_to_pro_t3d', as: :del_to_pro_t3d
  # videofx
  get 'account/hdwrtwey/:videofx_id', to: 'reviewers#add_to_pro_video', as: :add_to_pro_video
  get 'account/oud65ydfd/:videofx_id', to: 'reviewers#del_to_pro_video', as: :del_to_pro_video
  # course
  get 'account/hdwrtweyuy/:course_id', to: 'reviewers#add_to_pro_course', as: :add_to_pro_course
  get 'account/oud656ydfd/:course_id', to: 'reviewers#del_to_pro_course', as: :del_to_pro_course

  get 'account/reviewer/:team_id/projects', to: 'reviewers#project', as: :project

  get 'account/reviewer/:theme_id/review', to: 'reviewers#theme_up', as: :theme_up
  get 'account/reviewer544/:code_id/review', to: 'reviewers#code_up', as: :code_up
  get 'account/reviewer543/:graphic_id/review', to: 'reviewers#graphic_up', as: :graphic_up
  get 'account/reviewer545/:font_id/review', to: 'reviewers#font_up', as: :font_up
  get 'account/reviewer546/:t3d_id/review', to: 'reviewers#t3d_up', as: :t3d_up
  get 'account/reviewer547/:videofx_id/review', to: 'reviewers#video_up', as: :video_up
  get 'account/reviewer548/:course_id/review', to: 'reviewers#course_up', as: :course_up

  get 'account/show/:theme_id/theme', to: 'accounts#show_theme', as: :show_theme
  get 'account/show/:code_id/code', to: 'accounts#show_code', as: :show_code
  get 'account/show/:graphic_id/graphic', to: 'accounts#show_graphic', as: :show_graphic
  get 'account/show/:font_id/font', to: 'accounts#show_font', as: :show_font
  get 'account/show/:t3d_id/t3d', to: 'accounts#show_t3d', as: :show_t3d
  get 'account/show/:videofx_id/video', to: 'accounts#show_video', as: :show_video
  get 'account/show/:course_id/course', to: 'accounts#show_course', as: :show_course
  get 'account/earning', to: 'accounts#earning', as: :earning
  get 'account/notifications', to: 'accounts#activity', as: :activity
  get 'account/withdrawal', to: 'accounts#withdr', as: :withdr
  get 'account/vacancy', to: 'accounts#vacancy', as: :vacancy_account
  get 'account/datasupport/themes', to: 'accounts#datasupport', as: :datasupport
  get 'account/datasupport/data_theme/:ithemes', to: 'accounts#datasupport', as: :datasupport_theme
  get 'account/datasupport/data_code/:icodes', to: 'accounts#datasupport', as: :datasupport_code
  get 'account/datasupport/data_graphic/:igraphic', to: 'accounts#datasupport', as: :datasupport_graphic
  get 'account/datasupport/data_t3dream/:it3d', to: 'accounts#datasupport', as: :datasupport_t3d
  get 'account/datasupport/data_videofx/:ivideo', to: 'accounts#datasupport', as: :datasupport_videofx
  get 'account/datasupport/data_font/:ifont', to: 'accounts#datasupport', as: :datasupport_font
  get 'account/datasupport/data_course/:icourse', to: 'accounts#datasupport', as: :datasupport_course
  get 'account/datareviewer/:reviewers', to: 'accounts#reviewer_data', as: :reviewer_data
  get 'account/register_new_reviewer/:add_reviewer', to: 'accounts#reviewer_data', as: :register_new_reviewer
  get 'account/datamembers/:members', to: 'accounts#member_jobpost', as: :member_jobpost
  get 'account/datawithdrawals/:withdrawals', to: 'accounts#accept_withdr', as: :accept_withdr
  get 'withdrawals/update/:id', to: 'withdrawals#update_wr', as: :update_wr
  get 'withdrawals/delete/:id', to: 'withdrawals#delete_wr', as: :delete_wr

  get 'themes/item/:id/upgrade', to: 'themes#rewrite', as: :theme_rewrite
  get 'codes/item/:id/upgrade', to: 'codes#rewrite', as: :code_rewrite
  get 'fonts/item/:id/upgrade', to: 'fonts#rewrite', as: :font_rewrite
  get 't3dreams/item/:id/upgrade', to: 't3ds#rewrite', as: :t3d_rewrite
  get 'graphics/item/:id/upgrade', to: 'graphics#rewrite', as: :graphic_rewrite
  get 'courses/item/:id/upgrade', to: 'courses#rewrite', as: :course_rewrite
  get 'videofxes/item/:id/upgrade', to: 'videofxes#rewrite', as: :videofx_rewrite

  get 'courses/:course_id/headsecs/:headsec_id/delete/:id', to: 'lectures#deletethis', as: :deletethis

  get 'themes/category/:category', to: 'themes#theme_category', as: :theme_category
  get 'themes/category/:category/:subcategory', to: 'themes#theme_category', as: :theme_subcategory

  get 'codes/category/:category', to: 'codes#code_category', as: :code_category
  get 'codes/category/:category/:subcategory', to: 'codes#code_category', as: :code_subcategory

  get 'courses/category/:category', to: 'courses#course_category', as: :course_category
  get 'courses/category/:category/:subcategory', to: 'courses#course_category', as: :course_subcategory

  get 'fonts/category/:category', to: 'fonts#font_category', as: :font_category
  get 'fonts/category/:category/:industry', to: 'fonts#font_category', as: :font_industry

  get 'graphics/category/:category', to: 'graphics#graphic_category', as: :graphic_category
  get 'graphics/category/:category/:subcategory', to: 'graphics#graphic_category', as: :graphic_subcategory

  get 't3dreams/category/:category', to: 't3ds#t3d_category', as: :t3d_category
  get 't3dreams/category/:category/:subcategory', to: 't3ds#t3d_category', as: :t3d_subcategory

  get 'videofxes/category/:category', to: 'videofxes#videofx_category', as: :videofx_category
  get 'videofxes/category/:category/:subcategory', to: 'videofxes#videofx_category', as: :videofx_subcategory

  get 'account/mail/inbox', to: 'mailbox#inbox', as: :mailbox_inbox
  get 'account/mail/sent', to: 'mailbox#sent', as: :mailbox_sent
  get 'account/mail/trash', to: 'mailbox#trash', as: :mailbox_trash

  get "vacancies/category/:category", to: "vacancies#get_designer", as: :get_vacancies_designer
  
  resources :theme_autocompletes, only: [:index]
  resources :code_autocompletes, only: [:index]
  resources :graphic_autocompletes, only: [:index]
  resources :t3d_autocompletes, only: [:index]
  resources :videofx_autocompletes, only: [:index]
  resources :font_autocompletes, only: [:index]
  resources :course_autocompletes, only: [:index]




  root 'home#index'
end
