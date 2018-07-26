class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :duration
      t.string :status
      t.string :course
      t.string :course_level
      t.string :other_subject_area
      t.string :driven_question
      t.string :entry_event
      t.string :compentences
      t.boolean :product_public
      t.string :onsite_people_facilities
      t.string :equipments
      t.string :materials
      t.string :community_resources
      t.string :reflection_methods
      t.string :notes
      t.string :institution
      t.references :teacher, foreign_key: true

      t.timestamps
    end
  end
end
