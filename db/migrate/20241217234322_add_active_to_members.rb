class AddActiveToMembers < ActiveRecord::Migration[7.2]
  def change
    add_column :members, :active, :boolean
  end
end
