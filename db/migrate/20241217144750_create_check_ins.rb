class CreateCheckIns < ActiveRecord::Migration[7.2]
  def change
    create_table :check_ins do |t|
      t.references :member, null: false, foreign_key: true
      t.datetime :check_in_time

      t.timestamps
    end
  end
end
