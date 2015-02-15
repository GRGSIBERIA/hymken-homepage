class CreatePastAssigns < ActiveRecord::Migration
  def change
    create_table :past_assigns do |t|
      t.references :student, index: true
      t.integer :year

      t.timestamps null: false
    end
    add_foreign_key :past_assigns, :students
  end
end
