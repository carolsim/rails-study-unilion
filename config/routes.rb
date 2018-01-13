Rails.application.routes.draw do
  #Create
  get '/posts/new' => 'posts#new' #주소창이 저렇게 되면 포스츠 컨트롤러의 'new'액션으로 보내라!
  get '/posts/create' => 'posts#create'
  #Read
  root 'posts#index' #root는 메인화면을 설정하는 것이다.
  get '/posts/show/:post_id' => 'posts#show'
  
end
