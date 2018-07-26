class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :team_or_individual
      t.date :due_date
      t.string :learning_outcomes
      t.string :checkpoints
      t.string :learning_strategies
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
