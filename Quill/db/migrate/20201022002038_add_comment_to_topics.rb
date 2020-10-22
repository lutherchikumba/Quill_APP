class AddCommentToTopics < ActiveRecord::Migration[6.0]
  def change
    add_column :topics, :comment, :string
  end
end
