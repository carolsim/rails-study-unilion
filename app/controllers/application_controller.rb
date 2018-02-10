class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #이걸 주석처리하지 않음으로써, 페이크사이트에서 글을 쓰더라도 보호 가능
  #근데 이걸 주석처리안하면 우리사이트에서도 글 못씀
end
