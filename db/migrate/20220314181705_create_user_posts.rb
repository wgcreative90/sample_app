class CreateUserPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :user_posts do |t|
      t.text        :title
      t.references  :user
      t.references  :micropost
      t.timestamps
    end
  end
end

