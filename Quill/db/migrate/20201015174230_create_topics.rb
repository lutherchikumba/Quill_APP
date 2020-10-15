class CreateTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :topics do |t|
      t.string :author
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
