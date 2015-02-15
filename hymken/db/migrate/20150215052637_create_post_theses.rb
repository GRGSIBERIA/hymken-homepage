class CreatePostTheses < ActiveRecord::Migration
  def change
    create_table :post_theses do |t|
      t.references :past_assign, index: true
      t.string :name
      t.string :quotation
      t.string :view_hash

      t.timestamps null: false
    end
    add_foreign_key :post_theses, :past_assigns
  end
end
