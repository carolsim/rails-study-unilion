Rails.application.routes.draw do
  #Create
  get '/posts/new' => 'posts#new' #주소창이 저렇게 되면 포스츠 컨트롤러의 'new'액션으로 보내라!
  post '/posts/create' => 'posts#create' #모든 주소창 접속방식은 GET방식임. post는 ㄴㄴ
  #Read
  root 'posts#index' #root는 메인화면을 설정하는 것이다. get '/' => 이거랑 같은 말임
  get '/posts/show/:post_id' => 'posts#show'
  
  #Update
  get '/posts/edit/:post_id' => 'posts#edit'
  post '/posts/update/:post_id' => 'posts#update'
  
  #delete
  post '/posts/destroy/:post_id' => 'posts#destroy'
end
