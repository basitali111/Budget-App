class CreateProcedures < ActiveRecord::Migration[7.0]
  def change
    create_table :procedures do |t|
      t.string :name
      t.integer :amount
      t.references :author, null: false, foreign_key: { to_table: :users}
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
