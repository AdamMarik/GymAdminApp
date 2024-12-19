class AddDefaultCheckedOutToCheckIns < ActiveRecord::Migration[7.2]
  def change
    change_column_default :check_ins, :checked_out, false
  end
end
