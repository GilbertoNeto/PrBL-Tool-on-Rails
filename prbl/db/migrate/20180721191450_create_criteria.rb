class CreateCriteria < ActiveRecord::Migration[5.2]
  def change
    create_table :criteria do |t|
      t.string :name
      t.string :bellow_standard
      t.string :approaching_standard
      t.string :meeting_standard
      t.references :rubric, foreign_key: true

      t.timestamps
    end
  end
end
