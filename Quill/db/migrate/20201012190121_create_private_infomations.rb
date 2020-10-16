class CreatePrivateInfomations < ActiveRecord::Migration[6.0]
  def change
    create_table :private_infomations do |t|
      t.string :email
      t.integer :phone
      t.string :gender

      t.timestamps
    end
  end
end
