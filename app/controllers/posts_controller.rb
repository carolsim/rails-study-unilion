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
        @posts = Post.all #전부를 갖고와서 다뤄야 하기때문에 posts 복수형
    end
    
    def show
        @post = Post.find(params[:post_id]) #한 포스트만 다루므로 단수형
        @comments = Comment.where(post_id: params[:post_id])
    end
    
    #UPDATE
    def edit
        #사용자가 데이터를 입력할 화면
        @post = Post.find(params[:post_id])
    end
    
    def update
        #입력받은 데이터를 실제 DB에 저장할 액션
        @post = Post.find(params[:post_id])
        #수정할 코드
        @post.title = params[:input_title] #콜론 달면 더 성능 좋음(루비의 특성) params는 특별한 해쉬라서 가능한것
        @post.content = params[:input_content]
        @post.save
        
        redirect_to "/posts/show/#{@post.id}"
    end
    
    
    #DELETE
    def destroy
        @post = Post.find(params[:post_id])
        @post.destroy
        #show같은 것은 대응되는 show화면이 있지만 얘는 액션밖에 없다 -> redirect_to를 해주어야함
        redirect_to '/'
    end
    
    
    
end
