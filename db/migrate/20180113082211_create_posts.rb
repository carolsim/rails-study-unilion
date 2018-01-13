class CreatePosts < ActiveRecord::Migration
#마이그레이션 파일 -> 소원쪽지
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.timestamps null: false
    end
  end
end

#정보를 담는건 테이블, 관계를 명시하는건 모델에서 하는 일 