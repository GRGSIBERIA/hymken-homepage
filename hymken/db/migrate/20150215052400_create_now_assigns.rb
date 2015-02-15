class CreateNowAssigns < ActiveRecord::Migration
  def change
    create_table :now_assigns do |t|
      t.references :student, index: true

      t.timestamps null: false
    end
    add_foreign_key :now_assigns, :students
  end
end
