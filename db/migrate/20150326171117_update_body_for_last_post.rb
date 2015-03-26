class UpdateBodyForLastPost < ActiveRecord::Migration
  def up
    Post.reset_column_information

    post = Post.last
    post.body = "it's just test text"

    if post.save!
      print '.'
    else
      print 'f'
    end
  end

  def down
  end
end
