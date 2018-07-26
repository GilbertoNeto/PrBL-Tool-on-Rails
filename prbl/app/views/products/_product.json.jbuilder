json.extract! product, :id, :name, :team_or_individual, :due_date, :learning_outcomes, :checkpoints, :learning_strategies, :project_id, :created_at, :updated_at
json.url product_url(product, format: :json)
