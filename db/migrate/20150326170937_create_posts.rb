class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title

      t.timestamps
    end

    Post.create(title: 'test')
  end

  def down
    drop_table :posts
  end
end
