class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :username
      t.string :website
      t.string :bio

      t.timestamps
    end
  end
end
