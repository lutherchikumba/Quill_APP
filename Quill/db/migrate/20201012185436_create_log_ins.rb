class CreateLogIns < ActiveRecord::Migration[6.0]
  def change
    create_table :log_ins do |t|

      t.timestamps
    end
  end
end
