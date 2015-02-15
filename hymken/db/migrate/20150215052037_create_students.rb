class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :number
      t.string :name
      t.references :grade, index: true
      t.references :course, index: true

      t.timestamps null: false
    end
    add_foreign_key :students, :grades
    add_foreign_key :students, :courses
  end
end
