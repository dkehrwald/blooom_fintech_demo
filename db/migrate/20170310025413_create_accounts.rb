class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.integer :person_id, null: false
      t.string :account_name, null: false
      t.decimal :balance, null: false
      t.text :holdings
      t.string :account_type, null: false

      t.timestamps
    end
  end
end
