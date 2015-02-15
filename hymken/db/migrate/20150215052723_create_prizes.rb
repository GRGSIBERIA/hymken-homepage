class CreatePrizes < ActiveRecord::Migration
  def change
    create_table :prizes do |t|
      t.references :past_assign, index: true
      t.string :name

      t.timestamps null: false
    end
    add_foreign_key :prizes, :past_assigns
  end
end
