Rails.application.routes.draw do
  get '/posts/new' => 'posts#new' #주소창이 저렇게 되면 포스츠 컨트롤러의 'new'액션으로 보내라!
  get '/posts/create' => 'posts#create'
end
