class CreateRubrics < ActiveRecord::Migration[5.2]
  def change
    create_table :rubrics do |t|
      t.string :name
      t.string :purpose_assessment
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
