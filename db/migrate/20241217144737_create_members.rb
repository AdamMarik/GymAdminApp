class CreateMembers < ActiveRecord::Migration[7.2]
  def change
    create_table :members do |t|
      t.string :name
      t.string :membership_id
      t.string :contact_info
      t.string :membership_type

      t.timestamps
    end
  end
end
