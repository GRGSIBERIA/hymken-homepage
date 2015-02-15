class CreateGraduationTheses < ActiveRecord::Migration
  def change
    create_table :graduation_theses do |t|
      t.references :past_assign, index: true
      t.string :name
      t.string :view_hash

      t.timestamps null: false
    end
    add_foreign_key :graduation_theses, :past_assigns
  end
end
