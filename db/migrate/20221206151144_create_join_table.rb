class CreateJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :Categories, :Procedures do |t|
      # t.index [:category_id, :procedure_id]
      # t.index [:procedure_id, :category_id]
    end
  end
end
