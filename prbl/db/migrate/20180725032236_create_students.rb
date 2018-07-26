class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :institution
      t.boolean :leader
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
