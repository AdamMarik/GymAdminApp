class AddCheckedInToMembers < ActiveRecord::Migration[7.2]
  def change
    add_column :members, :checked_in, :boolean
    add_column :members, :default, :string
    add_column :members, :false, :string
  end
end
