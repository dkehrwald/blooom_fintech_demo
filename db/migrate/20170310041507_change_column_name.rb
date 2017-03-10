class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :accounts, :person_id, :user_id
  end
end
