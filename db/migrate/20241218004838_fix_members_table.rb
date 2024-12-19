class FixMembersTable < ActiveRecord::Migration[7.2]
  def change
    # Remove the unnecessary columns
    remove_column :members, :default
    remove_column :members, :false

    # Set the default value for checked_in
    change_column_default :members, :checked_in, false
  end
end

