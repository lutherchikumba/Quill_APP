class RemoveCommentFromTopic < ActiveRecord::Migration[6.0]
  def change
    remove_column :topics, :comment, :string
  end
end
