class CreateFunFacts < ActiveRecord::Migration[5.0]
  def change
    create_table :fun_facts do |t|
      t.string :description
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
