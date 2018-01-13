class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      #t.integer :post_id 바로 밑 문장과 똑같은 말
      t.belongs_to :post
      t.string :content

      t.timestamps null: false
    end
  end
end
