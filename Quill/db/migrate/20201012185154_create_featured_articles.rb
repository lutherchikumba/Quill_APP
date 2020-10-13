class CreateFeaturedArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :featured_articles do |t|
      t.string :article

      t.timestamps
    end
  end
end
