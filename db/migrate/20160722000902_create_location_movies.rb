class CreateLocationMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :location_movies do |t|
      t.references :location, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
