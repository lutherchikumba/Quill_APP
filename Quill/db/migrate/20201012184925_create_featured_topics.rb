class CreateFeaturedTopics < ActiveRecord::Migration[6.0]
  def change
    create_table :featured_topics do |t|
      t.string :topic

      t.timestamps
    end
  end
end
