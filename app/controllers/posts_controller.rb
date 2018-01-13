class PostsController < ApplicationController
    #CREATE
    def new
        #사용자가 데이터를 입력할 화면
        #자동으로 액션 이름과 같은 화면을 불러서 사용자에게 보여줘라
        
    end
    
    def create
        #입력받은 데이터를 실제 DB에 저장할 액션
        @post = Post.new #Post 모델(데이터베이스)을 새로 만드는 것
        #마이그레이션 파일에서 title과 content라고 정했기때문에 저렇게 쓰는것임
        @post.title = params[:input_title] #콜론 달면 더 성능 좋음(루비의 특성) params는 특별한 해쉬라서 가능한것
        @post.content = params[:input_content]
        @post.save
        redirect_to "/posts/show/#{@post.id}" #반드시 큰 따옴표로 써야 루비 문법 사용가능
    end
     
    #READ
    def index
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:post_id])
    end
    
    
    
end
